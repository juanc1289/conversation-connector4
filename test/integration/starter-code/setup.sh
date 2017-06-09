#!/usr/bin/env bash

export WSK=${WSK-wsk}

${WSK} action update starter-code/mock-convo ./test/integration/starter-code/mock-convo.js | grep -v 'ok'
${WSK} action update starter-code/integration-pipeline --sequence starter-code/pre-conversation,starter-code/normalize-slack-for-conversation,starter-code/mock-convo,starter-code/post-conversation,starter-code/normalize-conversation-for-slack | grep -v 'ok'
