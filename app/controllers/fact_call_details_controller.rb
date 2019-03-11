class FactCallDetailsController < ApplicationController
  before_action :set_fact_call_detail, only: [:show, :edit, :update, :destroy]

  # GET /fact_call_details
  def index
    @fact_call_details = FactCallDetail.all
  end

  # GET /fact_call_details/1
  def show
  end

  # GET /fact_call_details/new
  def new
    @fact_call_detail = FactCallDetail.new
  end

  # GET /fact_call_details/1/edit
  def edit
  end

  # POST /fact_call_details
  def create
    @fact_call_detail = FactCallDetail.new(fact_call_detail_params)

    if @fact_call_detail.save
      redirect_to @fact_call_detail, notice: 'Fact call detail was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fact_call_details/1
  def update
    if @fact_call_detail.update(fact_call_detail_params)
      redirect_to @fact_call_detail, notice: 'Fact call detail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fact_call_details/1
  def destroy
    @fact_call_detail.destroy
    redirect_to fact_call_details_url, notice: 'Fact call detail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fact_call_detail
      @fact_call_detail = FactCallDetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fact_call_detail_params
      params.require(:fact_call_detail).permit(:dim_client_id, :dim_timezone_id, :dim_call_category_id, :dim_call_type_id, :dim_call_action_id, :dim_call_action_reason_id, :dim_disp_id, :dim_service_id, :call_ivr_param_1_id, :call_ivr_param_2_id, :call_ivr_param_3_id, :call_ivr_param_4_id, :call_ivr_param_9_id, :call_ivr_param_10_id, :call_ivr_param_16_id, :call_ivr_param_18_id, :call_ivr_param_19_id, :call_id, :call_seq, :call_dialed_num, :call_answer_date, :call_end_date, :call_end_date_tz, :call_start_date, :call_start_date_tz, :call_wrap_end_date, :call_hold_number, :call_queue_time, :call_talk_time, :call_hold_time, :call_wrap_time)
    end
end
