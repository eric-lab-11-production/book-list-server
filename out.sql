PGDMP                         v           book_app    10.3    10.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    17936    book_app    DATABASE     �   CREATE DATABASE book_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE book_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24610    books    TABLE     �   CREATE TABLE public.books (
    book_id integer NOT NULL,
    author character varying(255),
    title character varying(255),
    isbn character varying(255),
    image_url character varying(255),
    description text
);
    DROP TABLE public.books;
       public         postgres    false    6            �            1259    24608    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public       postgres    false    197    6            �
           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
            public       postgres    false    196            o
           2604    24613    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    24610    books 
   TABLE DATA               U   COPY public.books (book_id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   _       �
           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 5, true);
            public       postgres    false    196            q
           2606    24618    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
   �
  x��Xko�6�l�
�$_FOl7u c�<�y4���((��ءH-3���{)��&E�bw���3E�ǹ瞫�����❋]�B�y�)�Z�J�FD|��m�������V����{��~x�;]�Cxx�^��:,[�Z�����{��Q��O]?����?���EZ?�3xmcP�q㱢r���=^ݹt�?>�\�:n�����碓%BtFYA�W*D)a9v�E0Jڶ��ۊ5���x.�䭪E���݉�����t�V�X��n�(�:v�T�䵴B�Z�L�K�J����8�M�2�Q��V�.e�e�h�V���룐btɶ��¤G�.D1(7%������m�^�Z2vpz�bgۉg��=�[4Jz�G��5�X�z���㕟Q�5vŪ3W��0�~-��Wv��l��Ț���r�؉^� KL[D{)^��Rt/6d�R��֏���dH��s'J�b��ia�9Q�*y��Q�-�Q|�Z��de�'g��k�"����U�M�9G�Bt�wi��0�Ѓ��#�D�n��s#,S�q��Fyi��%�7���U�u]SV+�qA1�-jIA�ݥ��ܨ��"�6ɈRs�q e[Ժit�L�`ג@�L�`��X�VW��5($�ҁ����"s���1l]t^�V�P�C'+<1:J{�U���2�"��O�������"p��%�Ze�K��t��6�=���m#{�	���s�B�i��2p=�6DU��Tu(�dkJl��@�$�{��K�ϔ/��;O�U�X��`���?<�g��:�Zu�g�?>���+HJխ:jͧtu�t3�e����#����D�OPA�V!GeFw$<TGb��jk�V�A4΋��v�JV]F���k�2�d�P5��
f-��^ֺ��e!���� ���,.F2S��h�����;|HF�K�R���kn/����p��k�����`�Z=��,4Go���''o���7�p�M� 	���A�ju�7���I)�*��Q�����ڔF^��� ��%"�)�(�V���F��� �ʶ�m{�I#/�` ��%���A_�	E���%Q��
����r~�Nl+������%s"ZO5S(���~����+����dxg�Dg�^����8�7�|��fv��d'
78�,05�.;t��^����H/�� ��Ȱ(p��S\��p�:�1��FV�`����R<*���j`�n��=�@�<x)���x�Tb���j�����6�i�LC�%�Pi�;�Pՙ�ș	FL�
AA�G��0Q<�>7P�B��'D�Ӌ�8�) �"��F�øX	��&C��awqv�Vl�,���Cnm n��Z({�zjz:�"i�4�3@Y~cq�b��8���Kj�ۂ}����kyy�-y��<��r��
��B!l�?��{4���$ ��XB���RY|�WhZ4�R�t�	㓘m4Ep]P���,��J��"E�`��fФ,Uv/��n�q:������/ÿ�m+���ۦ�M���LPBl�#��*��zĎ������p�f�(Ӗ֜5&�8�e)ج$�À��S �f�1uiR�T_����TN"gؤ��aW�\x<�g�״�5M��N5L���`F��rD�� F�ı;�8'CIj3;L��Kz
+�9����>��ݺ%0�����C��� q�O�fP#-;r���K������j��O�&.ቧ)��g�$mp� ��OCBP��1��kw�Ю��$�{H%�>O&L �k��T�O�]���a��F�hҹ>y�x����׍�O}�v�ƕ�-wv�fN��,1ipj��y���w�A����@�Z��w3�<�5w�L�����j�tj�@�.`�B�A|�2���(gŹ!�jr��2)rC�7'�'=�N%�� <� 8��芚�� �m%�@��d�,���`�{��<HY����rD��o܇�G{{�AD=ߎ�'����O�b��/Q�K�B�G&
���\�����a�H!=���Rt��]��>w^̮#��kqx�D���g�x�q&ŉb�~r�#'�,XCEX�2� "�Z��2���"y��p)=�t�'B���s�fv�	]ڣ�n��!���FH�Y���Hu�"BK>g�D+�h~��pU{���
�e�gq3��8*���6�`� !1���?��355z���(1=�vֹ!���a��I�D��-�@?𿊉2A;_�4g38��i(�)���=��Ԉ���s	���y��H)� �:d%w�����5"P�t/�l)^�HC�q�8��O�T������Y�J!Օzx��f�y�x��8�-
��^� ��]��è��=ܙ��U���r���d����P��ч��dă�4�O�W�b.OC��P)�ފ����[0��S�+n�?KCՄN�JCQ����@�;u���'�*z
7��8��j���8*Ʒ��py!x8�E���$�VXlOS}���}fP�3~O�oJ-+�'" �"Y�󋥞u�����!���ඊH�����Q�b���H�7n�<G7�(�'��+!ظ2��_��; )�ߖA6-;=�&s(�Zp)L��2N���l�	���&%�|�=�ި���4^Q���3���ysJ-���2QU�e�4��Y�dF��)B�/�2��*�;�%M�<�4�m��6�|y��<�F��������� qHA�     