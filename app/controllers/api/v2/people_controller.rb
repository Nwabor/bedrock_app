module Api
  module V2
    class PeopleController < JsonController
      before_action :set_person, only: %i[ show update destroy ]

       # GET /people
       def index
        @people = person_query.all

        render_json_person(@people)
      end

      # GET /people/1
      def show
        render_json_person( @person )
      end

      # POST /people
      def create
        @person = Person.new(person_params)

        if @person.save
          options = { status: :created, location: @person }
          render_json_person(@person, options)
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /people/1
      def update
        if @person.update( person_params )
          options = { status: :ok, location: @person }
          render_json_person( @person, options )
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      # DELETE /people/1
      def destroy
        @person.destroy!
      end

      private

      def person_query
        Person.includes(person_jobs: [ job: :company ])
      end

      # Use callbacks to share common setup or constraints between actions.
      def set_person
        @person = person_query.where(id: params[:id])
                              .limit(1).first
      end

      # Only allow a list of trusted parameters through.
      def person_params
        params.require(:person)
              .permit(:first_name, :last_name, :nick_name, :given_name, :gender)
      end

      def render_json_person(ar_query, options = {})
        render json: ar_query.as_json(
          include: {
            person_jobs: {
              only: [ :start_date, :end_date ],
              include: {
                job: {
                  only: [ :role ],
                  include: {
                    company: { only: [ :id, :name ] }
                  }
                }
              }
            }
          },
          except: [ :updated_at, :created_at ]
        ), **options
      end
    end
  end
end