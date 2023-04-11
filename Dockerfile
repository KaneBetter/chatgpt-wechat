FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

ARG OPEN_AI_API_KEY
ARG GROUP_CHAT_PREFIX
ARG SINGLE_CHAT_PREFIX

ENV BUILD_PREFIX=/app \
    OPEN_AI_API_KEY="${OPEN_AI_API_KEY}" \
    OPEN_AI_PROXY='' \
    SINGLE_CHAT_PREFIX='["bot", "@bot", "${SINGLE_CHAT_PREFIX}"]' \
    SINGLE_CHAT_REPLY_PREFIX='"[bot] "' \
    GROUP_CHAT_PREFIX='["${GROUP_CHAT_PREFIX}"]' \
    GROUP_NAME_WHITE_LIST='["ALL_GROUP"]' \
    IMAGE_CREATE_PREFIX='["画", "看", "找"]' \
    CONVERSATION_MAX_TOKENS=1000 \
    SPEECH_RECOGNITION="True" \
    CHARACTER_DESC='你是ChatGPT, 一个由OpenAI训练的大型语言模型, 你旨在回答并解决人们的任何问题，并且可以使用多种语言与人交流。' \
    EXPIRES_IN_SECONDS=3600

ENTRYPOINT ["/entrypoint.sh"]