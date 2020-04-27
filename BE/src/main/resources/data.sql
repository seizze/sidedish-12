INSERT INTO category(id, name, parent_id)
VALUES (1, 'best', null);
INSERT INTO category(id, name, parent_id)
VALUES (2, '할인특가 세트상품', 1);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (1, 'https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg', '[소중한식사] 경상도 한상차림',
        '["새벽배송","전국택배"]', '[소중한식사] 경상도 한상차림', '경상도 명물 요리 세 가지를 한 상에!', '["이벤트특가"]', null, null, null, null, null,
        '31,200원', '39,000', null);
INSERT INTO dish_category (dish, category)
VALUES (1, 2);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (2, 'https://cdn.bmf.kr/_data/product/HDF4C/954b78f9111bbef54ede9fdcdf1298d8.jpg', '[딩고] 시그니처 3종 SET',
        '["새벽배송","전국택배"]', '[딩고] 시그니처 3종 SET', '오늘 저녁은 이상하게 안주빨을 세워보고 싶다!', '["이벤트특가"]', null, null, null, null, null,
        '24,000원', '32,800', null);
INSERT INTO dish_category (dish, category)
VALUES (2, 2);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (3, 'https://cdn.bmf.kr/_data/product/H7F20/dc164f934d614469d097ccd0cd57cb5e.jpg', '[집밥의완성]초여름보양세트',
        '["새벽배송","전국택배"]', '[집밥의완성]초여름보양세트', '무더위에 대비하는 6월 한상차림 초여름 보양세트', '["이벤트특가"]', null, null, null, null, null,
        '18,200원', '26,000', null);
INSERT INTO dish_category (dish, category)
VALUES (3, 2);
INSERT INTO category(id, name, parent_id)
VALUES (3, '풍성한 고기반찬', 1);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (4, 'https://cdn.bmf.kr/_data/product/HA567/a5bbaa6bfb727030345f26ca9afe27c5.jpg', '[아내의쉐프] 아쉐찜닭',
        '["새벽배송","전국택배"]', '[아내의쉐프] 아쉐찜닭', '아내의쉐프가 자신 있게 만들어서 이름도 ''아쉐찜닭''입니다', '["이벤트특가","론칭특가"]', null, null, null,
        null, null, '10,700원', '11,900', null);
INSERT INTO dish_category (dish, category)
VALUES (4, 3);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (5, 'https://cdn.bmf.kr/_data/product/H206E/325c7aeb1673ffe58052463d93e407b8.jpg', '[애슐리투고] 로스트 콤보 450g',
        '["새벽배송","전국택배"]', '[애슐리투고] 로스트 콤보 450g', '립과 치킨이 만나  더욱 맛있게', '["론칭특가"]', null, null, null, null, null,
        '10,900원', null, null);
INSERT INTO dish_category (dish, category)
VALUES (5, 3);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (6, 'https://cdn.bmf.kr/_data/product/H75A2/f0d1fade9f7d16e7e33211a26c3aa469.jpg', '[한옥집]소갈비김치찜 2인분',
        '["새벽배송","전국택배"]', '[한옥집]소갈비김치찜 2인분', '부드러운 소갈비와 함께 푹 쪄낸 김치찜!', '["이벤트특가"]', null, null, null, null, null,
        '14,850원', '16,500', null);
INSERT INTO dish_category (dish, category)
VALUES (6, 3);
INSERT INTO category(id, name, parent_id)
VALUES (4, '바다향가득 반찬', 1);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (7, 'https://cdn.bmf.kr/_data/product/201703/02/ed36646771e0aabf4610a1de2e4b9c0e.jpg', '[아내의쉐프] 아쉐찜닭',
        '["새벽배송","전국택배"]', '[아내의쉐프] 아쉐찜닭', '아내의쉐프가 자신 있게 만들어서 이름도 ''아쉐찜닭''입니다', '["이벤트특가","론칭특가"]', null, null, null,
        null, null, '10,700원', '11,900', null);
INSERT INTO dish_category (dish, category)
VALUES (7, 4);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (8, 'https://cdn.bmf.kr/_data/product/H206E/325c7aeb1673ffe58052463d93e407b8.jpg', '[남도애꽃] 통오징어초롱 300g',
        '["새벽배송","전국택배"]', '[남도애꽃] 통오징어초롱 300g', '국내산 오징어를 통째로 불맛소스와 함께', null, null, null, null, null, null, '11,000원',
        null, null);
INSERT INTO dish_category (dish, category)
VALUES (8, 4);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (9, 'https://cdn.bmf.kr/_data/product/201703/20/f1580d55840b585ca31f7831b7ae6642.jpg', '[황태종가] 황태양념구이 300g',
        '["새벽배송","전국택배"]', '[황태종가] 황태양념구이 300g', '청정 황태마을 인제에서 온 깊은 맛', null, null, null, null, null, null, '12,000원',
        null, null);
INSERT INTO dish_category (dish, category)
VALUES (9, 4);
INSERT INTO category(id, name, parent_id)
VALUES (5, '편리한 반찬세트', 1);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (10, 'https://cdn.bmf.kr/_data/product/201410/13/b8b0a0aba3386f030155b6cb0c1c75fa.jpg', '[동네부엌] 사계절 건강식단 작은상',
        '["새벽배송","전국택배"]', '[동네부엌] 사계절 건강식단 작은상', '마포엄마들이 사랑해온 건강반찬', '["베스트"]', null, null, null, null, null,
        '24,000원', null, null);
INSERT INTO dish_category (dish, category)
VALUES (10, 5);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (11, 'https://cdn.bmf.kr/_data/product/201511/04/35365307dba3c23028a55027b29e88c9.jpg',
        '[집밥의완성] 한상 가득 세트 (3~4인)', '["새벽배송","전국택배"]', '[집밥의완성] 한상 가득 세트 (3~4인)', '식단 정기배송으로 반찬고민 끝', '["베스트"]', null,
        null, null, null, null, '32,000원', null, null);
INSERT INTO dish_category (dish, category)
VALUES (11, 5);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (12, 'https://cdn.bmf.kr/_data/product/H762E/03cfe3d522df7451ca09ff1e0eede530.jpg', '[옹가솜씨] 한끼뚝딱세트',
        '["새벽배송","전국택배"]', '[옹가솜씨] 한끼뚝딱세트', '한 세트만 있으면 한 끼 뚝딱', '["이벤트특가"]', null, null, null, null, null, '17,500원',
        '19,500', null);
INSERT INTO dish_category (dish, category)
VALUES (12, 5);
INSERT INTO category(id, name, parent_id)
VALUES (6, '간편한 덮밥요리', 1);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (13, 'https://cdn.bmf.kr/_data/product/H05FB/6ff744c6f36ba437a4f8b9e9a000b0b1.jpg', '[옹가솜씨] 소고기쩜짜장 280g',
        '["새벽배송","전국택배"]', '[옹가솜씨] 소고기쩜짜장 280g', '짜장의 착한 변신', null, null, null, null, null, null, '7,200원', null, null);
INSERT INTO dish_category (dish, category)
VALUES (13, 6);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (14, 'https://cdn.bmf.kr/_data/product/H0699/295db179a21edac9aad382686cb80be8.jpg', '[무명식당]뿌리채소비빔밥 2인분',
        '["새벽배송","전국택배"]', '[무명식당]뿌리채소비빔밥 2인분', '각종 뿌리채소를 듬뿍 넣어 지은 뿌리채소영양밥', '["이벤트특가"]', null, null, null, null, null,
        '4,750원', '5,000', null);
INSERT INTO dish_category (dish, category)
VALUES (14, 6);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (15, 'https://cdn.bmf.kr/_data/product/HBDEF/289b0fb6c14d2c8cd161205f8dadfa7a.jpg', '[미노리키친] 규동 250g',
        '["새벽배송","전국택배"]', '[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', '["이벤트특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"]',
        '52원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '5,200원', '6,500',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (15, 6);
INSERT INTO category(id, name, parent_id)
VALUES (7, '우리아이영양반찬', 1);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (16, 'https://cdn.bmf.kr/_data/product/H82A2/a43eaf448c21906cd1300735fa9dd7a1.jpg',
        '[빅마마의밥친구] 입맛감각 살려주는 유부토마토조림 200g', '["새벽배송","전국택배"]', '[빅마마의밥친구] 입맛감각 살려주는 유부토마토조림 200g',
        '아이반찬과 다이어트 반찬으로 일석이조!', null,
        'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"]',
        '49원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '4,900원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (16, 7);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (17, 'https://cdn.bmf.kr/_data/product/H213E/2895aa13fce2c5721f210080a2429562.jpg', '[동네부엌] 수제미트볼조림 300g',
        '["새벽배송","전국택배"]', '[동네부엌] 수제미트볼조림 300g', '재료부터 다른 수제미트볼조림', null,
        'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"]',
        '87원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '8,700원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (17, 7);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (18, 'https://cdn.bmf.kr/_data/product/H7A16/1a9e0f1c8de0e0d268bace68d50b0bf1.jpg',
        '[Young313] 흰살생선 된장소스구이 200g', '["새벽배송","전국택배"]', '[Young313] 흰살생선 된장소스구이 200g', '부드러운 명태살을 이용한 특별한 생선요리', null,
        'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"]',
        '90원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '9,000원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (18, 7);
INSERT INTO category(id, name, parent_id)
VALUES (8, 'main', null);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (19, 'http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', '[미노리키친] 규동 250g',
        '["새벽배송","전국택배"]', '[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', '["이벤트특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"]',
        '52원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '7,000원', '6,500',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (19, 8);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (20, 'http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg',
        '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '["새벽배송","전국택배"]', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '편식하는 아이도 좋아하는 건강한 연근조림',
        null, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]',
        '55원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '5,500원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (20, 8);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (21, 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg', '[소중한식사] 골뱅이무침 195g',
        '["새벽배송","전국택배"]', '[소중한식사] 골뱅이무침 195g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', '["이벤트특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]',
        '63원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '6,300원', '7,000',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (21, 8);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (22, 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg', '[옹가솜씨] 꽁치간장조림 240g',
        '["새벽배송","전국택배"]', '[옹가솜씨] 꽁치간장조림 240g', '생강 향이 산뜻한', null,
        'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]',
        '58원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '5,800원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (22, 8);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (23, 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg', '[마더앤찬] 코다리구이 320g',
        '["새벽배송","전국택배"]', '[마더앤찬] 코다리구이 320g', '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.', '["론칭특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]',
        '75원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '6,750원', '7,500',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (23, 8);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (24, 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg', '[남도애꽃] 반건조 문어조림 120g',
        '["새벽배송","전국택배"]', '[남도애꽃] 반건조 문어조림 120g', '씹을수록 감칠맛나는 문어살의 쫄깃함', null,
        'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]',
        '46원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '4,600원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (24, 8);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (25, 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',
        '[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g', '["새벽배송","전국택배"]', '[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g', '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.',
        '["론칭특가"]', 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]',
        '62원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '6,210원', '6,900',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (25, 8);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (26, 'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg', '[빅마마의밥친구] 비빔오징어 150g',
        '["새벽배송","전국택배"]', '[빅마마의밥친구] 비빔오징어 150g', '달콤한 신야초발효액이 포인트!', null,
        'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]',
        '50원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '5,000원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (26, 8);
INSERT INTO category(id, name, parent_id)
VALUES (9, 'soup', null);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (27, 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', '[수하동] 특곰탕 850g',
        '["새벽배송","전국택배"]', '[수하동] 특곰탕 850g', '100% 한우양지로 끓여낸 70년전통의 서울식곰탕', '["이벤트특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg"]',
        '142원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '14,200원', '15,000',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (27, 9);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (28, 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', '[빅마마의밥친구] 된장찌개 900g',
        '["새벽배송","전국택배"]', '[빅마마의밥친구] 된장찌개 900g', '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', null ,
        'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg"]',
        '100원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '10,000원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (28, 9);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (29, 'http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg', '[탐나는밥상] 동태탕 1000g',
        '["새벽배송","전국택배"]', '[탐나는밥상] 동태탕 1000g', '칼칼한 국물이 속 풀기에 딱 좋은 동태탕', null,
        'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg"]',
        '140원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '14,000원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (29, 9);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (30, 'http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg', '[국물닷컴] 치즈부대찌개 600g',
        '["새벽배송","전국택배"]', '[국물닷컴] 치즈부대찌개 600g', '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은', '["이벤트특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg"]',
        '43원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '4,300원', '5,500',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (30, 9);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (31, 'http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg',
        '[집밥의완성] 스키야키 1.5kg (2~3인분)', '["새벽배송","전국택배"]', '[집밥의완성] 스키야키 1.5kg (2~3인분)', '진한 풍미의 일본식 전골, 스키야키',
        '["이벤트특가"]', 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg"]',
        '100원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '10,000원', '19,800',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (31, 9);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (32, 'http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg', '[새로미부산어묵] 프리미엄 어묵탕세트',
        '["새벽배송","전국택배"]', '[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!', '["론칭특가","이벤트특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg"]',
        '144원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '14,400원', '18,000',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (32, 9);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (33, 'http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg', '[모이세] 육개장 1팩(600g)',
        '["새벽배송","전국택배"]', '[모이세] 육개장 1팩(600g)', '제주3대해장국 맛집의 인기메뉴', '["론칭특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg"]',
        '44원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '4,400원', '5,900',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (33, 9);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (34, 'http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg', '[마더앤찬] 명란감자국  630ml',
        '["새벽배송","전국택배"]', '[마더앤찬] 명란감자국 630ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', '["론칭특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg"]',
        '70원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '6,300원', '7,000',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (34, 9);
INSERT INTO category(id, name, parent_id)
VALUES (10, 'side', null);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (35, 'http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg',
        '[마샐미디쉬] 유자소스 연근무침 250g', '["새벽배송","전국택배"]', '[마샐미디쉬] 유자소스 연근무침 250g', '향긋한 유자향과 아삭한 연근', null,
        'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg"]',
        '65원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '6,500원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (35, 10);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (36, 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', '[동네부엌] 쇠고기야채장조림 200g',
        '["새벽배송","전국택배"]', '[동네부엌] 쇠고기야채장조림 200g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', null,
        'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg"]',
        '74원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '7,400원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (36, 10);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (37, 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', '[소중한식사] 도라지초무침 150g',
        '["새벽배송","전국택배"]', '[소중한식사] 도라지초무침 150g', '새콤달콤 입맛 돋우는', null,
        'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg"]',
        '40원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '4,000원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (37, 10);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (38, 'http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg',
        '[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '["새벽배송","전국택배"]', '[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '한국식 우엉조림과는 다른 진한 감칠맛', null,
        'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg"]',
        '33원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '3,300원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (38, 10);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (39, 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', '[빅마마의밥친구] 갈치포무침 150g',
        '["새벽배송","전국택배"]', '[빅마마의밥친구] 갈치포무침 150g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', null,
        'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg"]',
        '70원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '7,000원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (39, 10);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (40, 'http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg', '[마더앤찬] 명란치즈계란말이 230g',
        '["새벽배송","전국택배"]', '[마더앤찬] 명란치즈계란말이 230g', '아이반찬으로 최고 계란말이', '["이벤트특가"]',
        'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg"]',
        '39원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '3,870원', '4,300',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (40, 10);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (41, 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', '[옹가솜씨] 달걀곤약조림 330g',
        '["새벽배송","전국택배"]', '[옹가솜씨] 달걀곤약조림 330g', '칼로리 부담 쭉쭉 내린', null,
        'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg"]',
        '58원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '5,800원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (41, 10);
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point,
                 delivery_info, delivery_fee, s_price, n_price, detail_section)
VALUES (42, 'http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg', '[너의반찬] 미소된장 고추무침 200g',
        '["새벽배송","전국택배"]', '[너의반찬] 미소된장 고추무침 200g', '고소한 양념 때문에 손이 자꾸 가요', null,
        'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg',
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg"]',
        '45원', '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)',
        '4,500원', null,
        '["http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg","http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg"]');
INSERT INTO dish_category (dish, category)
VALUES (42, 10);
