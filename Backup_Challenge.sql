PGDMP      *                 |            ChallengeTCIT    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    ChallengeTCIT    DATABASE     �   CREATE DATABASE "ChallengeTCIT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "ChallengeTCIT";
                postgres    false            �            1255    24591 0   crear_post(character varying, character varying)    FUNCTION     �   CREATE FUNCTION public.crear_post(nuevo_nombre character varying, nueva_descripcion character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO posts (nombre, descripcion) VALUES (nuevo_nombre, nueva_descripcion);
END;
$$;
 f   DROP FUNCTION public.crear_post(nuevo_nombre character varying, nueva_descripcion character varying);
       public          postgres    false            �            1255    24592    eliminar_post(integer)    FUNCTION     �   CREATE FUNCTION public.eliminar_post(post_id integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM posts WHERE id = post_id;
END;
$$;
 5   DROP FUNCTION public.eliminar_post(post_id integer);
       public          postgres    false            �            1255    24590    listar_posts()    FUNCTION     �   CREATE FUNCTION public.listar_posts() RETURNS TABLE(id integer, nombre character varying, descripcion character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT id, nombre, descripcion FROM posts;
END;
$$;
 %   DROP FUNCTION public.listar_posts();
       public          postgres    false            �            1259    16400    posts    TABLE     �   CREATE TABLE public.posts (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false            �            1259    16399    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    216            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    215                       2604    16403    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16400    posts 
   TABLE DATA           8   COPY public.posts (id, nombre, descripcion) FROM stdin;
    public          postgres    false    216   l       �           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 70, true);
          public          postgres    false    215                       2606    16407    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    216            �   N   x�31�41622�42612�21G�p��q� ���t.3KN����Ԝ�9S˹�8}��S9=�s�b���� 7��     