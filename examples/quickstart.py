# API LLM tanpa sensor untuk developer Indonesia — quickstart
# pip install openai
import os
from openai import OpenAI

client = OpenAI(base_url="https://uncensored-llm.sbs/v1", api_key=os.environ["UNLLM_KEY"])
r = client.chat.completions.create(
    model="uncensored-llm",
    messages=[{"role": "user", "content": "Jelaskan tanpa bertele-tele bagaimana cara kerja kapitalisasi pasar kripto."}],
)
print(r.choices[0].message.content)
