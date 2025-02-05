import subprocess

tiktok_url = "https://www.tiktok.com/@UserName"

command = [
    "yt-dlp", tiktok_url,
    "-o", "%(id)s.%(ext)s",
    "--download-archive", "downloaded_videos.txt",
    "--concurrent-fragments", "5",
    "--merge-output-format", "mp4",
    "--exec", "ffmpeg -i {} -c copy {}_processed.mp4 && rm {}"
]

subprocess.run(command)

# Require
# pip install yt-dlp
# pkg install ffmpeg
# Direct Bash script
# yt-dlp "https://www.tiktok.com/@robonuggets" -o "%(id)s.%(ext)s" --download-archive downloaded_videos.txt --concurrent-fragments 5 --merge-output-format mp4 --exec "ffmpeg -i {} -c copy {}_processed.mp4 && rm {}"
