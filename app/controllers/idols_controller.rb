class IdolsController < ApplicationController
    def index
    end
    
    def new
        @idol = Idol.new
    end
    
    def show
        @idol = Idol.find_by(id: params[:id])
    end
    
    def create
        @idol = Idol.new(idol_params)
        params[:idol][:question] ? @idol.question = params[:idol][:question].join("") : false
        if @idol.question == "111" || @idol.question == "112" || @idol.question == "113" || @idol.question == "121" || @idol.question == "131" || @idol.question == "211" || @idol.question == "231" || @idol.question == "311" || @idol.question == "321"
            redirect_to :action => "SM"
        elsif @idol.question == "122" || @idol.question == "132" || @idol.question == "212" || @idol.question == "221" || @idol.question == "222" || @idol.question == "223" || @idol.question == "232" || @idol.question == "312" || @idol.question == "322"
            redirect_to :action => "YG"
        elsif @idol.question == "123" || @idol.question == "133" || @idol.question == "213" || @idol.question == "233" || @idol.question == "313" || @idol.question == "323" || @idol.question == "331" || @idol.question == "332" || @idol.question == "333"
            redirect_to :action => "JYP"
        elsif @idol.save
            flash[:notice] = "診断が完了しました"
            redirect_to idol_path(@idol.id)
        else
            redirect_to :action => "new"
        end
    end


    
    private
    def idol_params
        params.require(:idol).permit(:id, question: [])
    end

end