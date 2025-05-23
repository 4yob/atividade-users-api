PGDMP                       }            up_db    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16411    up_db    DATABASE     k   CREATE DATABASE up_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE up_db;
                     postgres    false            �            1259    16422    posts    TABLE     g   CREATE TABLE public.posts (
    id integer NOT NULL,
    content text NOT NULL,
    user_id integer
);
    DROP TABLE public.posts;
       public         heap r       postgres    false            �            1259    16421    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public               postgres    false    220                        0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public               postgres    false    219            �            1259    16413    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    photo text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16412    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    218                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            ]           2604    16425    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            \           2604    16416    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16422    posts 
   TABLE DATA           5   COPY public.posts (id, content, user_id) FROM stdin;
    public               postgres    false    220   7       �          0    16413    users 
   TABLE DATA           7   COPY public.users (id, name, email, photo) FROM stdin;
    public               postgres    false    218                     0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 7, true);
          public               postgres    false    219                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 56, true);
          public               postgres    false    217            c           2606    16429    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public                 postgres    false    220            _           2606    16420    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            a           2606    16418    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            d           2606    16430    posts posts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;
 B   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_user_id_fkey;
       public               postgres    false    220    4705    218            �   �   x�eʽj�0@���)���(-^�t+B�@P�[[%ֵ��!!S�&�5k)���g`(e�-���ݕ�˓�<�s�0����X�M�]<�4װ0��l,z���SFl�P�B2�Gi؈-�rC�4��2�K�]��q�j�g�����g[aፖCd�b7�9�E�j_I�\���_�J�L�:ծ�p܉�?��GG-��yN      �   |  x�m�KR�@�׿O�����c&@�@�Ŧ-�Ř��,�aŊ#d�ʂTnb��'IK"U��f�}=���{�|n�}B�2FcR�6Ղ��H�gG�ۤ]{�&^+��̀;�ڵOs��B'P�jF�8P����^.�i��0�F'���.��V͘>��u���$��ŖQ �6ӧ����d/0+G�#�>Y�9OL��a��~/��3�*ۘ_��n[3g3� ���H���kLj
?�?�My�
��,�a´f��Ls�SUS�.v��d����DD�˳%iM�C�RFY�ya#��;�r2�~n4��yM�{\����7���1&���`j
?�!-�U�aQS�!��wSM�ģ(����B;8�fY�ao8W�_	o�,��<{C�����:\�>�;���� l�Z�'d��q�)uX��p=��Y��W��:Y:����|��*����ӟ[�_�RV~n��g���o���Kn� �k
�]�*�p%L�Wo�T6���͏�<ţ�17G��3
-L;u���]��0�RqK�v��[��>NDĐ[�z}�+n�z"��^g4u�_]S�.�����ܑ�p���/*b���pٚ<�UG8|��i�4,�}��8Ƒ2����������*4��F���ږ,     