class RpgController < ApplicationController


  def index
    if !session[:gold_count] and !session[:activities]
      session[:gold_count] = 0
      session[:activities] = []
    @activities = session[:activities]
    end
  end

  def farm
    @random_num = rand(10..20)
    session[:gold_count] += @random_num
    session[:activities].push("Earned #{@random_num} golds from the farm!")
    redirect_to '/'
  end

  def cave
    @random_num = rand(5..10)
    session[:gold_count] += @random_num
    session[:activities].push("Earned #{@random_num} golds from the cave!")
    redirect_to '/'  
  end 

  def house
    @random_num = rand(2..5)
    session[:gold_count] += @random_num
    session[:activities].push("Earned #{@random_num} golds from the house!")
    redirect_to '/'
  end

  def casino
    @random_num = rand(-50..50)
    if @random_num > 0
    session[:gold_count] += @random_num
    session[:activities].push("Yayyy!!! Earned #{@random_num} golds from the cave!")
    redirect_to '/'
    else
    session[:gold_count] -= @random_num
    session[:activities].push("Ouchhhh....You lose #{@random_num} golds from the casino!")
    redirect_to '/'
    end
  end

  def reset
    session.clear
    redirect_to '/'
  end
end
