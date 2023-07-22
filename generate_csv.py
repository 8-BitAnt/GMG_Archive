import os
import csv

def generate_csv(root_folder, output_file):
    with open(output_file, mode='w', newline='') as csv_file:
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(['Author', 'Game'])

        for author_name in os.listdir(root_folder):
            author_folder = os.path.join(root_folder, author_name)
            if os.path.isdir(author_folder):
                for game_name in os.listdir(author_folder):
                    game_folder = os.path.join(author_folder, game_name)
                    if os.path.isdir(game_folder):
                        csv_writer.writerow([author_name, game_name])
                    else:
                        print(f"Skipping file: {game_folder}")

if __name__ == '__main__':
    root_folder = 'E:\Game Maker Game Archive\GMG_Archive'  # Replace this with the actual path of your root folder
    output_csv = 'games_archive.csv'  # Replace this with the desired CSV file name
    generate_csv(root_folder, output_csv)
