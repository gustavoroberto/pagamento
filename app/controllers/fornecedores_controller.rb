# encoding: utf-8

class FornecedoresController < ApplicationController
  # GET /fornecedores
  def index
    @fornecedores = Fornecedor.all
  end

  # GET /fornecedores/1
  def show
    @fornecedor = Fornecedor.find(params[:id])
  end

  # GET /fornecedores/new
  def new
    @fornecedor = Fornecedor.new
  end

  # GET /fornecedores/1/edit
  def edit
    @fornecedor = Fornecedor.find(params[:id])
  end

  # POST /fornecedores
  def create
    @fornecedor = Fornecedor.new(params[:fornecedor])

    if @fornecedor.save
      redirect_to fornecedores_path, notice: 'Fornecedor foi criado.'
    else
      render action: "new"
    end
  end

  # PUT /fornecedores/1
  def update
    @fornecedor = Fornecedor.find(params[:id])

    if @fornecedor.update_attributes(params[:fornecedor])
      redirect_to fornecedores_path, notice: 'Fornecedor foi atualizado.'
    else
      render action: "edit"
    end
  end

  # DELETE /fornecedores/1
  def destroy
    @fornecedor = Fornecedor.find(params[:id])
    @fornecedor.destroy

    redirect_to fornecedores_path, notice: 'Fornecedor foi excluído.'
  end
end
