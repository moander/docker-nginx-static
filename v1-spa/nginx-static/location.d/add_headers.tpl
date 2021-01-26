
add_header X-XSS-Protection "1; mode=block" always;
add_header X-Content-Type-Options "nosniff" always;
add_header X-Frame-Options "${HEADER_X_FRAME_OPTIONS}" always;
add_header Strict-Transport-Security "${HEADER_STRICT_TRANSPORT_SECURITY}" always;
