PGDMP                          x            tap_talk    12.2 (Debian 12.2-2.pgdg100+1)     12.2 (Ubuntu 12.2-2.pgdg18.04+1) a    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    132566    tap_talk    DATABASE     x   CREATE DATABASE tap_talk WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE tap_talk;
                admin    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                admin    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   admin    false    3            �            1259    132608 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    admin    false    3            �            1259    132606    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          admin    false    209    3            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          admin    false    208            �            1259    132618    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    admin    false    3            �            1259    132616    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          admin    false    211    3            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          admin    false    210            �            1259    132752    auth_manager_loggedinuser    TABLE     �   CREATE TABLE public.auth_manager_loggedinuser (
    id integer NOT NULL,
    session_key character varying(1000),
    user_id integer NOT NULL
);
 -   DROP TABLE public.auth_manager_loggedinuser;
       public         heap    admin    false    3            �            1259    132750     auth_manager_loggedinuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_manager_loggedinuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.auth_manager_loggedinuser_id_seq;
       public          admin    false    218    3            �           0    0     auth_manager_loggedinuser_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.auth_manager_loggedinuser_id_seq OWNED BY public.auth_manager_loggedinuser.id;
          public          admin    false    217            �            1259    132652    auth_manager_user    TABLE     h  CREATE TABLE public.auth_manager_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    username character varying(60) NOT NULL,
    full_name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    birthday timestamp with time zone,
    is_active boolean NOT NULL
);
 %   DROP TABLE public.auth_manager_user;
       public         heap    admin    false    3            �            1259    132650    auth_manager_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_manager_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.auth_manager_user_id_seq;
       public          admin    false    3    213            �           0    0    auth_manager_user_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.auth_manager_user_id_seq OWNED BY public.auth_manager_user.id;
          public          admin    false    212            �            1259    132600    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    admin    false    3            �            1259    132598    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          admin    false    207    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          admin    false    206            �            1259    132716    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    admin    false    3            �            1259    132714    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          admin    false    3    215            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          admin    false    214            �            1259    132590    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    admin    false    3            �            1259    132588    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          admin    false    205    3            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          admin    false    204            �            1259    132579    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    admin    false    3            �            1259    132577    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          admin    false    203    3            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          admin    false    202            �            1259    132738    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    admin    false    3            �            1259    132857    main_diaryuser    TABLE     �   CREATE TABLE public.main_diaryuser (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    body_content text NOT NULL,
    date_published date NOT NULL,
    user_id_id integer NOT NULL
);
 "   DROP TABLE public.main_diaryuser;
       public         heap    admin    false    3            �            1259    132855    main_diaryuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_diaryuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.main_diaryuser_id_seq;
       public          admin    false    3    220            �           0    0    main_diaryuser_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.main_diaryuser_id_seq OWNED BY public.main_diaryuser.id;
          public          admin    false    219                       2604    132611    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          admin    false    208    209    209                       2604    132621    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    210    211    211                       2604    132755    auth_manager_loggedinuser id    DEFAULT     �   ALTER TABLE ONLY public.auth_manager_loggedinuser ALTER COLUMN id SET DEFAULT nextval('public.auth_manager_loggedinuser_id_seq'::regclass);
 K   ALTER TABLE public.auth_manager_loggedinuser ALTER COLUMN id DROP DEFAULT;
       public          admin    false    217    218    218                       2604    132655    auth_manager_user id    DEFAULT     |   ALTER TABLE ONLY public.auth_manager_user ALTER COLUMN id SET DEFAULT nextval('public.auth_manager_user_id_seq'::regclass);
 C   ALTER TABLE public.auth_manager_user ALTER COLUMN id DROP DEFAULT;
       public          admin    false    213    212    213                       2604    132603    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          admin    false    206    207    207                       2604    132719    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          admin    false    215    214    215                       2604    132593    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          admin    false    205    204    205                       2604    132582    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          admin    false    203    202    203                       2604    132860    main_diaryuser id    DEFAULT     v   ALTER TABLE ONLY public.main_diaryuser ALTER COLUMN id SET DEFAULT nextval('public.main_diaryuser_id_seq'::regclass);
 @   ALTER TABLE public.main_diaryuser ALTER COLUMN id DROP DEFAULT;
       public          admin    false    219    220    220            �          0    132608 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          admin    false    209            �          0    132618    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          admin    false    211            �          0    132752    auth_manager_loggedinuser 
   TABLE DATA           M   COPY public.auth_manager_loggedinuser (id, session_key, user_id) FROM stdin;
    public          admin    false    218            �          0    132652    auth_manager_user 
   TABLE DATA           v   COPY public.auth_manager_user (id, password, last_login, username, full_name, email, birthday, is_active) FROM stdin;
    public          admin    false    213            �          0    132600    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          admin    false    207            �          0    132716    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          admin    false    215            �          0    132590    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          admin    false    205            �          0    132579    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          admin    false    203            �          0    132738    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          admin    false    216            �          0    132857    main_diaryuser 
   TABLE DATA           ]   COPY public.main_diaryuser (id, title, body_content, date_published, user_id_id) FROM stdin;
    public          admin    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          admin    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          admin    false    210            �           0    0     auth_manager_loggedinuser_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.auth_manager_loggedinuser_id_seq', 3, true);
          public          admin    false    217            �           0    0    auth_manager_user_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_manager_user_id_seq', 6, true);
          public          admin    false    212            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          admin    false    206            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          admin    false    214            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          admin    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          admin    false    202            �           0    0    main_diaryuser_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.main_diaryuser_id_seq', 1, true);
          public          admin    false    219            *           2606    132648    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            admin    false    209            /           2606    132634 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            admin    false    211    211            2           2606    132623 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            admin    false    211            ,           2606    132613    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            admin    false    209            D           2606    132757 8   auth_manager_loggedinuser auth_manager_loggedinuser_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.auth_manager_loggedinuser
    ADD CONSTRAINT auth_manager_loggedinuser_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.auth_manager_loggedinuser DROP CONSTRAINT auth_manager_loggedinuser_pkey;
       public            admin    false    218            F           2606    132759 ?   auth_manager_loggedinuser auth_manager_loggedinuser_user_id_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.auth_manager_loggedinuser
    ADD CONSTRAINT auth_manager_loggedinuser_user_id_key UNIQUE (user_id);
 i   ALTER TABLE ONLY public.auth_manager_loggedinuser DROP CONSTRAINT auth_manager_loggedinuser_user_id_key;
       public            admin    false    218            5           2606    132666 -   auth_manager_user auth_manager_user_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.auth_manager_user
    ADD CONSTRAINT auth_manager_user_email_key UNIQUE (email);
 W   ALTER TABLE ONLY public.auth_manager_user DROP CONSTRAINT auth_manager_user_email_key;
       public            admin    false    213            7           2606    132660 (   auth_manager_user auth_manager_user_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.auth_manager_user
    ADD CONSTRAINT auth_manager_user_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.auth_manager_user DROP CONSTRAINT auth_manager_user_pkey;
       public            admin    false    213            :           2606    132662 0   auth_manager_user auth_manager_user_username_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.auth_manager_user
    ADD CONSTRAINT auth_manager_user_username_key UNIQUE (username);
 Z   ALTER TABLE ONLY public.auth_manager_user DROP CONSTRAINT auth_manager_user_username_key;
       public            admin    false    213            %           2606    132625 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            admin    false    207    207            '           2606    132605 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            admin    false    207            =           2606    132725 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            admin    false    215                        2606    132597 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            admin    false    205    205            "           2606    132595 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            admin    false    205                       2606    132587 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            admin    false    203            A           2606    132745 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            admin    false    216            H           2606    132865 "   main_diaryuser main_diaryuser_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.main_diaryuser
    ADD CONSTRAINT main_diaryuser_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.main_diaryuser DROP CONSTRAINT main_diaryuser_pkey;
       public            admin    false    220            (           1259    132649    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            admin    false    209            -           1259    132645 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            admin    false    211            0           1259    132646 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            admin    false    211            3           1259    132685 %   auth_manager_user_email_a4d2d786_like    INDEX     x   CREATE INDEX auth_manager_user_email_a4d2d786_like ON public.auth_manager_user USING btree (email varchar_pattern_ops);
 9   DROP INDEX public.auth_manager_user_email_a4d2d786_like;
       public            admin    false    213            8           1259    132683 (   auth_manager_user_username_275884e2_like    INDEX     ~   CREATE INDEX auth_manager_user_username_275884e2_like ON public.auth_manager_user USING btree (username varchar_pattern_ops);
 <   DROP INDEX public.auth_manager_user_username_275884e2_like;
       public            admin    false    213            #           1259    132631 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            admin    false    207            ;           1259    132736 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            admin    false    215            >           1259    132737 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            admin    false    215            ?           1259    132747 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            admin    false    216            B           1259    132746 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            admin    false    216            I           1259    132871 "   main_diaryuser_user_id_id_14a319ff    INDEX     c   CREATE INDEX main_diaryuser_user_id_id_14a319ff ON public.main_diaryuser USING btree (user_id_id);
 6   DROP INDEX public.main_diaryuser_user_id_id_14a319ff;
       public            admin    false    220            L           2606    132640 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          admin    false    2855    207    211            K           2606    132635 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          admin    false    2860    211    209            O           2606    132760 L   auth_manager_loggedinuser auth_manager_loggedi_user_id_33fd88eb_fk_auth_mana    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_manager_loggedinuser
    ADD CONSTRAINT auth_manager_loggedi_user_id_33fd88eb_fk_auth_mana FOREIGN KEY (user_id) REFERENCES public.auth_manager_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.auth_manager_loggedinuser DROP CONSTRAINT auth_manager_loggedi_user_id_33fd88eb_fk_auth_mana;
       public          admin    false    2871    213    218            J           2606    132626 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          admin    false    2850    207    205            M           2606    132726 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          admin    false    205    2850    215            N           2606    132731 J   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_manager_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_manager_user_id FOREIGN KEY (user_id) REFERENCES public.auth_manager_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_manager_user_id;
       public          admin    false    213    2871    215            P           2606    132866 I   main_diaryuser main_diaryuser_user_id_id_14a319ff_fk_auth_manager_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_diaryuser
    ADD CONSTRAINT main_diaryuser_user_id_id_14a319ff_fk_auth_manager_user_id FOREIGN KEY (user_id_id) REFERENCES public.auth_manager_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.main_diaryuser DROP CONSTRAINT main_diaryuser_user_id_id_14a319ff_fk_auth_manager_user_id;
       public          admin    false    213    2871    220            �      x������ � �      �      x������ � �      �   �   x�M�MS�0E���0%�U��B|������M�jC�H;��z����8s�ܹ�Z��:ߊ������-g�Ԁ�E�ڳT��,�;��ګ(��!�w�Ѓ�V����)�'��8~�u��Z1�	o��@��w0p�oX�N�i(y��4~�Ɯ_s��sd��o�ʹ,����M\����ܑTgf���mi�/�Gy{|��R��emvY/;����{��hZ�˶,�d[       �   �  x���]o�@�k�^pg��`�1i"v�ZD�d3
� *P�_�v�i�5���xs.f��	���ۢ_َ!��nGܖ�3ld��.ʺ�陋����9-G����u����J�	Փ�Pg�$ �@�o�`���nQ�4@G`I0�{�v~�zA�x�ڤ��f	y?M����O��.�W�W33�F�j~ �,�j�#{ӎ�<��0_ԧ�W�o�=�'�.�<�j�g�)U� 71�����>�ɏq&tV�u<�b�`�3�/cmg�6���e5�sC%/.�i0w�<�U���=�b^��B[���wv��W@0�s$K�՗#�KwlL �d���ɕ�����������Z�@�-��~�j�.'�����?� -��xB�5+T��gg�:�Ãsv���i.�B�����bv��<������;�U��~��׵      �   T  x�]�]n�0�����`j���QiBM�"u����ۼ5��/���B1X[���pa[ve�q�:�p�%���F'T� Z�r��qD���ݟ`�P��f���u�SP%��@�<N@�c��}�b �=%
	���s�L�YU����t�]HoJs���� T�u��S؎wWl��T!8:'��<炱J���]<&
�R�EC��]�^]|��I��ǒ����%V�(�Tebr�{u�j!���K�x�!�/&D��x��?�����������Ї���6JO+��.{)��d��bC�iM�-�~X�({���J����ͬ�a��Y� BB(�Ǉ��sd��      �      x������ � �      �   s   x�U��
1E��1��>?f�H#�01A�E��!e�����PH����Z��
��
[wɊ�/��[����Q����.x�i�1�m��DJ�������Ñ����h<��O�����9      �   8  x���ˎ�0E��W̾A$����D��~���$'N:v'�x#����RP�v
�4]�0�spU[M����߹z�����Ä����T�B�]���t�Z߄�e��D����ǋ�,j��B��|=���ah�q��67t��tuh��-J0�DJ%�\QtC�c���W�+�%5'�Z)♒>YN�O�B2��U�W�|F�~�\ݝ�x���3F1�`Ĭ��{��uyL.Y���L"�kW��	���:��F�O'��\�џ�޵C-A�D��̮5�zl(�Qd�$�q�P��E�Q�o�����k�&�6���������)�;�D�#�2c�rl�F7�[@��J��@��W5��}iA=J0�*c���6
�҄w�AJ/��= )�8��U��;~t�q/dY~E�Q���q�긊� R�-E C�%�`�1�����%XʉB��M_{�h�3�JP%"3JH��aCK2�1r	_������7�U��mV�z�_��X�Qc�І�����$�gJ�D�W�JP�E��eJ%�hKn �����V���      �      x������ � �      �   /   x�3�L,.�D #%;%;5�8'1?8��t̀�ӈ+F��� i�     