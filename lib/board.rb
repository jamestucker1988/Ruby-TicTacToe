require_relative("../lib/player")
class Board
  @@view_board = [0,1,2,3,4,5,6,7,8] 
  @@combinations = [ [0,1,2], [3,0,6],[3,4,5],[6,7,8],[1,4,7],[2,5,8],[0,4,8],[6,4,2] ]
   
                  
      
         def initialize
        
             @true_board = [10, 10, 10, 10, 10, 10, 10, 10, 10] 
           
         end
         def display_board 
          puts @@view_board[0].to_s + '|' + @@view_board[1].to_s + '|' + @@view_board[2].to_s
          puts '-----'
          puts @@view_board[3].to_s + '|' + @@view_board[4].to_s + '|' + @@view_board[5].to_s
          puts '-----'
          puts @@view_board[6].to_s + '|' + @@view_board[7].to_s + '|' + @@view_board[8].to_s
        end

        def update_board(pos,sign)
  
          puts "update_board #{sign}"
          puts "anand"
          puts  sign == 'x'   ?  @true_board[pos] = 0 : @true_board[pos] = 1
          if @@view_board[pos].to_i.is_a?(Numeric)
            @@view_board[pos] = sign
            return true
          else
            puts  "invalid move try again!"
            return false
          end
          
        end  
      end 
      
