require 'rails_helper'


describe BooksController, type: :controller do
  fixtures :all
  before(:all) do
    Book.all.each do |bk|
      bk.destroy
    end
  end
  it "Should give me one book from fixtures" do
    admn = users(:admin)
    sign_in admn
    get :index
    expect(assigns(:books).size).to eql(1)
  end

  context "with admin's privilages" do
    before :each do
      admn = users(:admin)
      sign_in admn
    end

    it "should create book" do
      params = {:book=>{:title => "Geometria", :description => "descrizione del libro"}}
      get :create, :params => params
      bk_tst = Book.where(:title => "Geometria")
      expect(bk_tst).not_to be_empty
    end

    it "should show books" do
      bk_tst = books(:one)
      params = {:id => bk_tst.id}
      get :show, :params => params
      expect(assigns(:book)).to eql(bk_tst)
      end

      it "should update book" do
        bk_tst = books(:one)
        params = {:id => bk_tst.id, :book => {:title => "IT-IA"}}
        
        get :update, :params => params
        BK_tst = Book.find(bk_tst.id)
        expect(BK_tst.title).to eql(bk_tst.title)
      end

      it "should destroy book" do
        bk_tst = books(:one)
        params = {:id => bk_tst.id}
        get :destroy, :params => params
        BK_tst = Book.where(:id => bk_tst.id)
        expect(BK_tst).to be_empty
      end
  end
  
  
end
