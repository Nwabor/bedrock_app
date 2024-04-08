# returns only specific fields
module Api
  module V1
    class PeopleController < JsonController
      before_action :set_person, only: %i[ show update destroy ]

      # GET /people
      def index
        @people = Person.all

        render json: @people.as_json(
          except: [:created_at, :updated_at]
        )
      end

      # GET /people/1
      def show
        render json: @person.as_json(
          only: [:id, :nick_name, :first_name, :last_name, :given_name, :gender]
        )
      end

      # POST /people
      def create
        @person = Person.new(person_params)

        if @person.save
          render json: @person.as_json(
            except: [:created_at, :updated_at]
          ), status: :created, location: @person
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /people/1
      def update
        if @person.update(person_params)
          render json: @person.as_json(
            only: [:id, :nick_name, :first_name, :last_name, :given_name, :gender]
          ), status: :ok, location: @person
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      # DELETE /people/1
      def destroy
        @person.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_person
        @person = Person.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def person_params
        params.require(:person)
              .permit(:first_name, :last_name, :nick_name, :given_name, :gender)
      end
    end
  end
end
