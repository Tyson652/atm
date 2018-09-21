inbalance = File.read("balance.rb").to_i
History = []

puts "Welcome the the banking app"

puts "Your balance is $#{inbalance}"
loop do
puts "What would you like to do?\n (1) Balance\n (2) Deposit\n (3) Withdraw\n (4) History"
    input = gets.chomp
    system "clear"


    if input == "1"
       puts "Your balance is $#{inbalance}"
    
       
    elsif input == "2"
        puts "How much would you like to deposit"
        Deposit = gets.chomp.to_f
        system "clear"
        inbalance = inbalance + Deposit
        History << "Deposit: $#{Deposit}"
        puts "Your balance is now #{inbalance}"

    elsif input == "4"
        puts History

    elsif input == "3" 
        puts "How much would you like to withdraw?" 
        Withdraw = gets.chomp.to_f
        system "clear"
        if Withdraw > inbalance
            puts "Sorry you don't have enough money"
        else 
        inbalance = inbalance - Withdraw
        History << "Withdraw: $#{Withdraw}"
        puts "Your balance is now $#{inbalance}" 
        end 
    else
        puts "Invaild input!"
    end 

    puts "would you like to make another transaction?"  
    continue = gets.chomp

    if continue == "y" 
    system "clear" 

    else
        #File.write("~/Sites/folder2/balance.rb", "inbalance")
        File.open("balance.rb", 'w') { |file| file.write(inbalance) }
        system "clear"
        puts "Goodbye"
        break
    end 
    end
