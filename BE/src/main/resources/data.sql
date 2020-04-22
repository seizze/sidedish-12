INSERT INTO category(id, name, parent_id)
VALUES (1, 'best', null);
INSERT INTO category(id, name, parent_id)
VALUES (2, '할인특가세트상품', 1);
INSERT INTO category(id, name, parent_id)
VALUES (3, '풍성한고기반찬', 1);
INSERT INTO category(id, name, parent_id)
VALUES (4, '편리한반찬세트', 1);
INSERT INTO category(id, name, parent_id)
VALUES (5, '간편한 덮밥요리', 1);
INSERT INTO category(id, name, parent_id)
VALUES (6, '우리아이영양반찬', 1);
INSERT INTO category(id, name, parent_id)


VALUES (7, 'main', null);
INSERT INTO category(id, name, parent_id)
VALUES (8, 'soup', null);
INSERT INTO category(id, name, parent_id)
VALUES (9, 'side', null);

-- 베스트 반찬 - 할인특가 상품
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images,
                 point, delivery_info, delivery_fee, n_price, s_price, detail_section)
VALUES (1, 'https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg',
        '[소중한식사] 경상도 한상차림', '["새벽배송", "전국택배"]', '[소중한식사] 경상도 한상차림', '경상도 명물 요리 세 가지를 한 상에!',
        '["이벤트특가"]',
        'https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg',
        '["https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg", "https://cdn.bmf.kr/_data/product/H9881/fbf29077698ca16f8050e43476b47f38.jpg", "https://cdn.bmf.kr/_data/product/H9881/c96c6949efc3391148e9b280a2c5ed0b.jpg", "https://cdn.bmf.kr/_data/product/H9881/71411e15d2d961df496f87f08648b345.jpg", "https://cdn.bmf.kr/_data/product/H9881/437196dacf46b52b11d0bccbc4231558.jpg"]',
        '312원',
        '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.',
        '2,500원 (40,000원 이상 구매 시 무료)',
        '39,000원', '31,200원',
        '["https://cdn.bmf.kr/_data/product/H9881/7fb1ddf1adeadc5410cecd79441f7b65.jpg", "https://cdn.bmf.kr/_data/product/H9881/b776c59544b516a184d1363c2c802789.jpg", "https://cdn.bmf.kr/_data/product/H9881/cc2b4a61db410096db0e3c497096d63f.jpg", "https://cdn.bmf.kr/_data/product/H9881/77970960c8efe0992f9746c37062e1e4.jpg", "https://cdn.bmf.kr/_data/product/H9881/aa56cec7d2fe4dde0b124c17a06ffda6.jpg", "https://cdn.bmf.kr/_data/product/H9881/c9fbe313767400ce21ea83bb2b9d8e96.jpg", "https://cdn.bmf.kr/_data/product/H9881/320939f0d0fbe8e4846e20111f1aa4ce.jpg", "https://cdn.bmf.kr/_data/product/H9881/5778ae933121c5d131889ecbf5e2874c.jpg", "https://cdn.bmf.kr/_data/product/H9881/785291ed7fe3f2a8c7e06f443dea7553.jpg", "https://cdn.bmf.kr/_data/product/H9881/92ef47f6efdd0286f6af7f712c3c838d.jpg", "https://cdn.bmf.kr/_data/product/H9881/c0319354245ee2963ccb97d60943e8ff.jpg", "https://cdn.bmf.kr/_data/product/H9881/07b1864a06f3b0b26af9a7148ac70cfb.jpg", "https://cdn.bmf.kr/_data/product/H9881/ba2aba220a55924a00c668dd13c4cee1.jpg"]');

INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images,
                 point, delivery_info, delivery_fee, n_price, s_price, detail_section)
VALUES (2, 'https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg',
        '베스트 반찬 2', ' ["전국택배"]', '[소중한식사] 전라도 한상차림', '전라도 명물 요리 세 가지를 한 상에!',
        '["이벤트특가"]',
        'https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg',
        '["https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg", "https://cdn.bmf.kr/_data/product/H9881/fbf29077698ca16f8050e43476b47f38.jpg", "https://cdn.bmf.kr/_data/product/H9881/c96c6949efc3391148e9b280a2c5ed0b.jpg", "https://cdn.bmf.kr/_data/product/H9881/71411e15d2d961df496f87f08648b345.jpg", "https://cdn.bmf.kr/_data/product/H9881/437196dacf46b52b11d0bccbc4231558.jpg"]',
        '312원',
        '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.',
        '2,500원 (40,000원 이상 구매 시 무료)',
        '39,000원', '31,200원',
        '["https://cdn.bmf.kr/_data/product/H9881/7fb1ddf1adeadc5410cecd79441f7b65.jpg", "https://cdn.bmf.kr/_data/product/H9881/b776c59544b516a184d1363c2c802789.jpg", "https://cdn.bmf.kr/_data/product/H9881/cc2b4a61db410096db0e3c497096d63f.jpg", "https://cdn.bmf.kr/_data/product/H9881/77970960c8efe0992f9746c37062e1e4.jpg", "https://cdn.bmf.kr/_data/product/H9881/aa56cec7d2fe4dde0b124c17a06ffda6.jpg", "https://cdn.bmf.kr/_data/product/H9881/c9fbe313767400ce21ea83bb2b9d8e96.jpg", "https://cdn.bmf.kr/_data/product/H9881/320939f0d0fbe8e4846e20111f1aa4ce.jpg", "https://cdn.bmf.kr/_data/product/H9881/5778ae933121c5d131889ecbf5e2874c.jpg", "https://cdn.bmf.kr/_data/product/H9881/785291ed7fe3f2a8c7e06f443dea7553.jpg", "https://cdn.bmf.kr/_data/product/H9881/92ef47f6efdd0286f6af7f712c3c838d.jpg", "https://cdn.bmf.kr/_data/product/H9881/c0319354245ee2963ccb97d60943e8ff.jpg", "https://cdn.bmf.kr/_data/product/H9881/07b1864a06f3b0b26af9a7148ac70cfb.jpg", "https://cdn.bmf.kr/_data/product/H9881/ba2aba220a55924a00c668dd13c4cee1.jpg"]');

INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images,
                 point, delivery_info, delivery_fee, n_price, s_price, detail_section)
VALUES (3, 'https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg',
        '베스트 반찬 3', ' ["전국택배"]', '[소중한식사] 3종세트', '인기반찬 3종세트',
        '["이벤트특가"]',
        'https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg',
        '["https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg", "https://cdn.bmf.kr/_data/product/H9881/fbf29077698ca16f8050e43476b47f38.jpg", "https://cdn.bmf.kr/_data/product/H9881/c96c6949efc3391148e9b280a2c5ed0b.jpg", "https://cdn.bmf.kr/_data/product/H9881/71411e15d2d961df496f87f08648b345.jpg", "https://cdn.bmf.kr/_data/product/H9881/437196dacf46b52b11d0bccbc4231558.jpg"]',
        '312원',
        '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.',
        '2,500원 (40,000원 이상 구매 시 무료)',
        '39,000원', '31,200원',
        '["https://cdn.bmf.kr/_data/product/H9881/7fb1ddf1adeadc5410cecd79441f7b65.jpg", "https://cdn.bmf.kr/_data/product/H9881/b776c59544b516a184d1363c2c802789.jpg", "https://cdn.bmf.kr/_data/product/H9881/cc2b4a61db410096db0e3c497096d63f.jpg", "https://cdn.bmf.kr/_data/product/H9881/77970960c8efe0992f9746c37062e1e4.jpg", "https://cdn.bmf.kr/_data/product/H9881/aa56cec7d2fe4dde0b124c17a06ffda6.jpg", "https://cdn.bmf.kr/_data/product/H9881/c9fbe313767400ce21ea83bb2b9d8e96.jpg", "https://cdn.bmf.kr/_data/product/H9881/320939f0d0fbe8e4846e20111f1aa4ce.jpg", "https://cdn.bmf.kr/_data/product/H9881/5778ae933121c5d131889ecbf5e2874c.jpg", "https://cdn.bmf.kr/_data/product/H9881/785291ed7fe3f2a8c7e06f443dea7553.jpg", "https://cdn.bmf.kr/_data/product/H9881/92ef47f6efdd0286f6af7f712c3c838d.jpg", "https://cdn.bmf.kr/_data/product/H9881/c0319354245ee2963ccb97d60943e8ff.jpg", "https://cdn.bmf.kr/_data/product/H9881/07b1864a06f3b0b26af9a7148ac70cfb.jpg", "https://cdn.bmf.kr/_data/product/H9881/ba2aba220a55924a00c668dd13c4cee1.jpg"]');

-- 베스트 반찬 - 할인 특가 상품

INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images,
                 point, delivery_info, delivery_fee, n_price, s_price, detail_section)
VALUES (4, 'https://cdn.bmf.kr/_data/product/HDF4C/954b78f9111bbef54ede9fdcdf1298d8.jpg',
        '[딩고] 시그니처 3종 SET',
        '["새벽배송", "전국택배"]',
        '[딩고] 시그니처 3종 SET',
        '오늘 저녁은 이상하게 안주빨을 세워보고 싶다!',
        '["이벤트특가"]',
        'https://cdn.bmf.kr/_data/product/HDF4C/a5f8637df5a375e3105c12b6efd47538.jpg',
        '[https://cdn.bmf.kr/_data/product/HDF4C/a5f8637df5a375e3105c12b6efd47538.jpg
        "https://cdn.bmf.kr/_data/product/HDF4C/6cca5e7533981795c6d9f2744bfc78c0.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/a3972e617da696c157a8bef56fd3c277.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/b68631d002e5302c7a3c3102cf429816.jpg"]',
        '240원',
        '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.',
        '2,500원 (40,000원 이상 구매 시 무료)',
        '24,000원',
        null,
        '["https://cdn.bmf.kr/_data/product/HDF4C/480af64b8c4fa0263f8aa53e33d7c080.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/91fc97648a4d594b46ca2421208ebbe5.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/149346388c4a58fa8ac6a13885677ab1.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/3a34ea05d3ab38a679c05a19cf7da6d2.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/338bc1aae24993487eb08fc16c24a6f4.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/607903a968b047ba0f1f0ae6eace1d8f.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/9fb39899744ebec09135c0b26eb91f11.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/9b439eb50ec3a822eb0d2bf6f25a96f8.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/80d9bd1b1395e1fdcfdb9074fd2ab2c1.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/b6ac960bd7f9224dfeecdbe4b3c59533.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/20f423e397ee9efb7b40b4ace4ca84ce.jpg",
        "https://cdn.bmf.kr/_data/product/HDF4C/7dc81092a0c37de68bbba6ff45f06ab4.jpg"]');

-- 든든한 반찬
INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images,
                 point, delivery_info, delivery_fee, n_price, s_price, detail_section)
VALUES (5, 'https://cdn.bmf.kr/_data/product/HF56E/2d3f99a9a35601f4e98837bc4d39b2c8.jpg',
        '[윤식당] 불고기 with Rice (재료)',
        '["새벽배송", "전국택배"]',
        '[윤식당] 불고기 with Rice (재료)',
        '윤식당 불고기메뉴의 가장 기본인 불고기라이스! (마더소스 포함)",)',
        null,
        'https://cdn.bmf.kr/_data/product/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg',
        '["https://cdn.bmf.kr/_data/product/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg"]',
        '52원',
        '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.',
        '2,500원 (40,000원 이상 구매 시 무료)',
        '6,500원', '5,200원',
        '["https://cdn.bmf.kr/_data/product/HBDEF/2c62efce07c96be700f317b60c537c6e.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/95816f09d3294641f2e0feacaa739991.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/4971475295545ec336c9479fabb25364.jpg"]');

INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images,
                 point, delivery_info, delivery_fee, n_price, s_price, detail_section)
VALUES (6, 'https://cdn.bmf.kr/_data/product/HF56E/2d3f99a9a35601f4e98837bc4d39b2c8.jpg',
        '든든 반찬 2',
        '["새벽배송", "전국택배"]',
        '든든한 반찬 2',
        '든든해',
        null,
        'https://cdn.bmf.kr/_data/product/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg',
        '"https://cdn.bmf.kr/_data/product/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg"]',
        '52원',
        '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.',
        '2,500원 (40,000원 이상 구매 시 무료)',
        '6,500원', '5,200원',
        '["https://cdn.bmf.kr/_data/product/HBDEF/2c62efce07c96be700f317b60c537c6e.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/95816f09d3294641f2e0feacaa739991.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg", "https://cdn.bmf.kr/_data/product/HBDEF/4971475295545ec336c9479fabb25364.jpg"]');


INSERT INTO dish_category (dish, category)
VALUES (1, 2);
INSERT INTO dish_category (dish, category)
VALUES (2, 2);
INSERT INTO dish_category (dish, category)
VALUES (3, 2);
INSERT INTO dish_category (dish, category)
VALUES (4, 7);
INSERT INTO dish_category (dish, category)
VALUES (5, 7);
INSERT INTO dish_category (dish, category)
VALUES (6, 7);
INSERT INTO dish_category (dish, category)
VALUES (6, 9);
INSERT INTO dish_category(dish, category)
VALUES (1, 3);
INSERT INTO dish_category(dish, category)
VALUES (2, 3);
INSERT INTO dish_category(dish, category)
VALUES (3, 3);

