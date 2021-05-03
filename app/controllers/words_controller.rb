class WordsController < ApplicationController
  # before_action :set_word, only: [:show, :update, :destroy]
  before_action :set_subject

  # GET /words
  def index
    @words = Word.all

    render json: @words
  end

  # GET /words/1
  def show
    @word = Word.find(params[:id])
    render json: @word
  end

  # POST /words
  def create
    # @word = Word.new(word_params)
    @word = Word.new(word_params)

    if @subject.words.include?(@word.spelling)
      render json: {errors: 'That word is already listed for this subject.'} 
    else
      @word = @subject.words.new(word_params)
      @word.save
      render json: @subject
    end

    # @word = @subject.words.new(word_params)

    # if @subject.word_check(@word) == true
    #   @word.save
    #   render json: @subject
    # else
    #   render json: {errors: 'That word is already listed for this subject.'}
    #   # render json: {errors: @word.spelling + " is already listed for this subject."}
    # end



    # if @word.save
    #   # render json: @word, status: :created, location: @word
    #   render json: @subject
    # else
    #   render json: @word.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /words/1
  def update
    @word = Word.find(params[:id])
    if @word.update(word_params)
      render json: @word
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # DELETE /words/1
  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    render json: @subject
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_word
    #   @word = Word.find(params[:id])
    # end

    def set_subject
      @subject = Subject.find_by_id(params['subject_id'])
    end

    # Only allow a trusted parameter "white list" through.
    def word_params
      params.require(:word).permit(:spelling, :pos, :definition, :sentences)
    end
end
