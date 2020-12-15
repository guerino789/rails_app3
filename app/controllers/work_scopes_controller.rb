class WorkScopesController < ApplicationController
  def show
    @work_scope = WorkScope.find(params[:id])
  end

  def new
    @work_scope = WorkScope.new
  end

  def create
    @work_scope = WorkScope.new(work_scope_params)

    if @work_scope.save
      redirect_to @work_scope
    else
      render :new
    end
  end

  def edit
    @work_scope = WorkScope.find(params[:id])
  end

  def update
    @work_scope = WorkScope.find(params[:id])

    @work_scope.update(work_scope_params)

    if @work_scope.save
      redirect_to @work_scope
    else
      render :edit
    end
  end

end
