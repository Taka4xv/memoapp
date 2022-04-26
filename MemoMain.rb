require "csv"
    
def firstFunction
    p '新規CSVを作成する場合は『1』を既存CSVを変更する場合は『2』を入力して下さい'
    _MakeOrOpen = gets.to_i
    if _MakeOrOpen == 1
        p "新規ファイル作成します。ファイル名を入力してください"
        filename = gets
        csvfilename = filename+".csv"
        CSV.open(csvfilename,"w")do |csv|
            puts "メモ内容を入力してください"
            loop{
                memo_contents = gets.chomp
                csv << [memo_contents]
            }
        end
        
    elsif _MakeOrOpen == 2
        p "既存ファイルを開きます。ファイル名を入力してください"
        filename = gets
        csvfilename = filename+".csv"
        puts csvfilename
        CSV.open(csvfilename,"a")do |csv|
            puts "メモ内容を入力してください"
            loop{
                memo_contents = gets.chomp
                csv << [memo_contents]
            }
        end

    else
        p "エラー　1か2を入力してください"
        firstFunction
    end
end
firstFunction()
