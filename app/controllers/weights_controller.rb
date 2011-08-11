class WeightsController < ApplicationController
  # GET /weights
  # GET /weights.xml
  def index
    @member = Member.find(params[:member_id])
    redirect_to member_path(@member)
  end

  # GET /weights/1
  # GET /weights/1.xml
  def show
    @member = Member.find(params[:member_id])
    @weight = @member.weights.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weight }
    end
  end

  # GET /weights/new
  # GET /weights/new.xml
  def new
    @member = Member.find(params[:member_id])
    @weight = @member.weights.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weight }
    end
  end

  # GET /weights/1/edit
  def edit
    @member = Member.find(params[:member_id])
    @weight = @member.weights.find(params[:id])
  end

  # POST /weights
  # POST /weights.xml
  def create
    @member = Member.find(params[:member_id])
    @weight = @member.weights.build(params[:weight])

    respond_to do |format|
      if @weight.save
        format.html { redirect_to(member_weights_path(@member), :notice => 'Weight was successfully created.') }
        format.xml  { render :xml => @weight, :status => :created, :location => @weight }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weights/1
  # PUT /weights/1.xml
  def update
    @member = Member.find(params[:member_id])
    @weight = @member.weights.find(params[:id])

    respond_to do |format|
      if @weight.update_attributes(params[:weight])
        format.html { redirect_to(member_weight_path(@member, @weight), :notice => 'Weight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.xml
  def destroy
    @member = Member.find(params[:member_id])
    @weight = @member.weights.find(params[:id])
    @weight.destroy

    respond_to do |format|
      format.html { redirect_to member_weights_path(@member) }
      format.xml  { head :ok }
    end
  end
end
