package com.team12.sidedish.dto;

import java.util.StringJoiner;

public class ResponseDto<T> {
    private final T data;

    public ResponseDto(T data) {
        this.data = data;
    }

    public static <T> ResponseDto<T> OK(T response) {
        return new ResponseDto<>(response);
    }

    public T getData() {
        return this.data;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", ResponseDto.class.getSimpleName() + "[", "]")
                .add("data=" + data)
                .toString();
    }
}
