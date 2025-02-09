PGDMP     *                
    y            projek    10.18    10.18 X    O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            R           1262    24585    projek    DATABASE     �   CREATE DATABASE projek WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE projek;
             postgres    false                        2615    24586    kampus    SCHEMA        CREATE SCHEMA kampus;
    DROP SCHEMA kampus;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            S           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            T           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24765    dosen_alamats    TABLE     '  CREATE TABLE kampus.dosen_alamats (
    id integer NOT NULL,
    jalan character varying(50),
    no_rumah character varying(4),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    id_dosens integer NOT NULL
);
 !   DROP TABLE kampus.dosen_alamats;
       kampus         postgres    false    8            �            1259    24789    dosen_alamats_id_dosens_seq    SEQUENCE     �   CREATE SEQUENCE kampus.dosen_alamats_id_dosens_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE kampus.dosen_alamats_id_dosens_seq;
       kampus       postgres    false    208    8            U           0    0    dosen_alamats_id_dosens_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE kampus.dosen_alamats_id_dosens_seq OWNED BY kampus.dosen_alamats.id_dosens;
            kampus       postgres    false    211            �            1259    24763    dosen_alamats_id_seq    SEQUENCE     �   CREATE SEQUENCE kampus.dosen_alamats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE kampus.dosen_alamats_id_seq;
       kampus       postgres    false    8    208            V           0    0    dosen_alamats_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE kampus.dosen_alamats_id_seq OWNED BY kampus.dosen_alamats.id;
            kampus       postgres    false    207            �            1259    24721    dosens    TABLE     �   CREATE TABLE kampus.dosens (
    id integer NOT NULL,
    nama character varying(50),
    nidn character(8),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE kampus.dosens;
       kampus         postgres    false    8            �            1259    24719    dosens_id_seq    SEQUENCE     �   CREATE SEQUENCE kampus.dosens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE kampus.dosens_id_seq;
       kampus       postgres    false    202    8            W           0    0    dosens_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE kampus.dosens_id_seq OWNED BY kampus.dosens.id;
            kampus       postgres    false    201            �            1259    24747    dosens_matakuliah    TABLE       CREATE TABLE kampus.dosens_matakuliah (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    id_dosens integer NOT NULL,
    id_matakuliah integer NOT NULL
);
 %   DROP TABLE kampus.dosens_matakuliah;
       kampus         postgres    false    8            �            1259    24801    dosens_matakuliah_id_dosens_seq    SEQUENCE     �   CREATE SEQUENCE kampus.dosens_matakuliah_id_dosens_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE kampus.dosens_matakuliah_id_dosens_seq;
       kampus       postgres    false    8    206            X           0    0    dosens_matakuliah_id_dosens_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE kampus.dosens_matakuliah_id_dosens_seq OWNED BY kampus.dosens_matakuliah.id_dosens;
            kampus       postgres    false    212            �            1259    24837 #   dosens_matakuliah_id_matakuliah_seq    SEQUENCE     �   CREATE SEQUENCE kampus.dosens_matakuliah_id_matakuliah_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE kampus.dosens_matakuliah_id_matakuliah_seq;
       kampus       postgres    false    206    8            Y           0    0 #   dosens_matakuliah_id_matakuliah_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE kampus.dosens_matakuliah_id_matakuliah_seq OWNED BY kampus.dosens_matakuliah.id_matakuliah;
            kampus       postgres    false    215            �            1259    24745    dosens_matakuliah_id_seq    SEQUENCE     �   CREATE SEQUENCE kampus.dosens_matakuliah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE kampus.dosens_matakuliah_id_seq;
       kampus       postgres    false    206    8            Z           0    0    dosens_matakuliah_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE kampus.dosens_matakuliah_id_seq OWNED BY kampus.dosens_matakuliah.id;
            kampus       postgres    false    205            �            1259    24778    mahasiswa_alamats    TABLE     /  CREATE TABLE kampus.mahasiswa_alamats (
    id integer NOT NULL,
    jalan character varying(50),
    no_rumah character varying(4),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    id_mahasiswas integer NOT NULL
);
 %   DROP TABLE kampus.mahasiswa_alamats;
       kampus         postgres    false    8            �            1259    24813 #   mahasiswa_alamats_id_mahasiswas_seq    SEQUENCE     �   CREATE SEQUENCE kampus.mahasiswa_alamats_id_mahasiswas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE kampus.mahasiswa_alamats_id_mahasiswas_seq;
       kampus       postgres    false    8    210            [           0    0 #   mahasiswa_alamats_id_mahasiswas_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE kampus.mahasiswa_alamats_id_mahasiswas_seq OWNED BY kampus.mahasiswa_alamats.id_mahasiswas;
            kampus       postgres    false    213            �            1259    24776    mahasiswa_alamats_id_seq    SEQUENCE     �   CREATE SEQUENCE kampus.mahasiswa_alamats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE kampus.mahasiswa_alamats_id_seq;
       kampus       postgres    false    210    8            \           0    0    mahasiswa_alamats_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE kampus.mahasiswa_alamats_id_seq OWNED BY kampus.mahasiswa_alamats.id;
            kampus       postgres    false    209            �            1259    24679 
   mahasiswas    TABLE     �   CREATE TABLE kampus.mahasiswas (
    id integer NOT NULL,
    nama character varying(50),
    nim character(8),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE kampus.mahasiswas;
       kampus         postgres    false    8            �            1259    24677    mahasiswas_id_seq    SEQUENCE     �   CREATE SEQUENCE kampus.mahasiswas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE kampus.mahasiswas_id_seq;
       kampus       postgres    false    8    200            ]           0    0    mahasiswas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE kampus.mahasiswas_id_seq OWNED BY kampus.mahasiswas.id;
            kampus       postgres    false    199            �            1259    24729    mahasiswas_matakuliah    TABLE       CREATE TABLE kampus.mahasiswas_matakuliah (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    id_mahasiswas integer NOT NULL,
    id_matakuliah integer NOT NULL
);
 )   DROP TABLE kampus.mahasiswas_matakuliah;
       kampus         postgres    false    8            �            1259    24825 '   mahasiswas_matakuliah_id_mahasiswas_seq    SEQUENCE     �   CREATE SEQUENCE kampus.mahasiswas_matakuliah_id_mahasiswas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE kampus.mahasiswas_matakuliah_id_mahasiswas_seq;
       kampus       postgres    false    204    8            ^           0    0 '   mahasiswas_matakuliah_id_mahasiswas_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE kampus.mahasiswas_matakuliah_id_mahasiswas_seq OWNED BY kampus.mahasiswas_matakuliah.id_mahasiswas;
            kampus       postgres    false    214            �            1259    24849 '   mahasiswas_matakuliah_id_matakuliah_seq    SEQUENCE     �   CREATE SEQUENCE kampus.mahasiswas_matakuliah_id_matakuliah_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE kampus.mahasiswas_matakuliah_id_matakuliah_seq;
       kampus       postgres    false    204    8            _           0    0 '   mahasiswas_matakuliah_id_matakuliah_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE kampus.mahasiswas_matakuliah_id_matakuliah_seq OWNED BY kampus.mahasiswas_matakuliah.id_matakuliah;
            kampus       postgres    false    216            �            1259    24727    mahasiswas_matakuliah_id_seq    SEQUENCE     �   CREATE SEQUENCE kampus.mahasiswas_matakuliah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE kampus.mahasiswas_matakuliah_id_seq;
       kampus       postgres    false    204    8            `           0    0    mahasiswas_matakuliah_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE kampus.mahasiswas_matakuliah_id_seq OWNED BY kampus.mahasiswas_matakuliah.id;
            kampus       postgres    false    203            �            1259    24623 
   matakuliah    TABLE     �   CREATE TABLE kampus.matakuliah (
    id integer NOT NULL,
    nama_matkul character varying(50),
    sks character(2),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE kampus.matakuliah;
       kampus         postgres    false    8            �            1259    24621    matakuliah_id_seq    SEQUENCE     �   CREATE SEQUENCE kampus.matakuliah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE kampus.matakuliah_id_seq;
       kampus       postgres    false    8    198            a           0    0    matakuliah_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE kampus.matakuliah_id_seq OWNED BY kampus.matakuliah.id;
            kampus       postgres    false    197            �
           2604    24768    dosen_alamats id    DEFAULT     t   ALTER TABLE ONLY kampus.dosen_alamats ALTER COLUMN id SET DEFAULT nextval('kampus.dosen_alamats_id_seq'::regclass);
 ?   ALTER TABLE kampus.dosen_alamats ALTER COLUMN id DROP DEFAULT;
       kampus       postgres    false    207    208    208            �
           2604    24791    dosen_alamats id_dosens    DEFAULT     �   ALTER TABLE ONLY kampus.dosen_alamats ALTER COLUMN id_dosens SET DEFAULT nextval('kampus.dosen_alamats_id_dosens_seq'::regclass);
 F   ALTER TABLE kampus.dosen_alamats ALTER COLUMN id_dosens DROP DEFAULT;
       kampus       postgres    false    211    208            �
           2604    24724 	   dosens id    DEFAULT     f   ALTER TABLE ONLY kampus.dosens ALTER COLUMN id SET DEFAULT nextval('kampus.dosens_id_seq'::regclass);
 8   ALTER TABLE kampus.dosens ALTER COLUMN id DROP DEFAULT;
       kampus       postgres    false    202    201    202            �
           2604    24750    dosens_matakuliah id    DEFAULT     |   ALTER TABLE ONLY kampus.dosens_matakuliah ALTER COLUMN id SET DEFAULT nextval('kampus.dosens_matakuliah_id_seq'::regclass);
 C   ALTER TABLE kampus.dosens_matakuliah ALTER COLUMN id DROP DEFAULT;
       kampus       postgres    false    206    205    206            �
           2604    24803    dosens_matakuliah id_dosens    DEFAULT     �   ALTER TABLE ONLY kampus.dosens_matakuliah ALTER COLUMN id_dosens SET DEFAULT nextval('kampus.dosens_matakuliah_id_dosens_seq'::regclass);
 J   ALTER TABLE kampus.dosens_matakuliah ALTER COLUMN id_dosens DROP DEFAULT;
       kampus       postgres    false    212    206            �
           2604    24839    dosens_matakuliah id_matakuliah    DEFAULT     �   ALTER TABLE ONLY kampus.dosens_matakuliah ALTER COLUMN id_matakuliah SET DEFAULT nextval('kampus.dosens_matakuliah_id_matakuliah_seq'::regclass);
 N   ALTER TABLE kampus.dosens_matakuliah ALTER COLUMN id_matakuliah DROP DEFAULT;
       kampus       postgres    false    215    206            �
           2604    24781    mahasiswa_alamats id    DEFAULT     |   ALTER TABLE ONLY kampus.mahasiswa_alamats ALTER COLUMN id SET DEFAULT nextval('kampus.mahasiswa_alamats_id_seq'::regclass);
 C   ALTER TABLE kampus.mahasiswa_alamats ALTER COLUMN id DROP DEFAULT;
       kampus       postgres    false    209    210    210            �
           2604    24815    mahasiswa_alamats id_mahasiswas    DEFAULT     �   ALTER TABLE ONLY kampus.mahasiswa_alamats ALTER COLUMN id_mahasiswas SET DEFAULT nextval('kampus.mahasiswa_alamats_id_mahasiswas_seq'::regclass);
 N   ALTER TABLE kampus.mahasiswa_alamats ALTER COLUMN id_mahasiswas DROP DEFAULT;
       kampus       postgres    false    213    210            �
           2604    24682    mahasiswas id    DEFAULT     n   ALTER TABLE ONLY kampus.mahasiswas ALTER COLUMN id SET DEFAULT nextval('kampus.mahasiswas_id_seq'::regclass);
 <   ALTER TABLE kampus.mahasiswas ALTER COLUMN id DROP DEFAULT;
       kampus       postgres    false    200    199    200            �
           2604    24732    mahasiswas_matakuliah id    DEFAULT     �   ALTER TABLE ONLY kampus.mahasiswas_matakuliah ALTER COLUMN id SET DEFAULT nextval('kampus.mahasiswas_matakuliah_id_seq'::regclass);
 G   ALTER TABLE kampus.mahasiswas_matakuliah ALTER COLUMN id DROP DEFAULT;
       kampus       postgres    false    204    203    204            �
           2604    24827 #   mahasiswas_matakuliah id_mahasiswas    DEFAULT     �   ALTER TABLE ONLY kampus.mahasiswas_matakuliah ALTER COLUMN id_mahasiswas SET DEFAULT nextval('kampus.mahasiswas_matakuliah_id_mahasiswas_seq'::regclass);
 R   ALTER TABLE kampus.mahasiswas_matakuliah ALTER COLUMN id_mahasiswas DROP DEFAULT;
       kampus       postgres    false    214    204            �
           2604    24851 #   mahasiswas_matakuliah id_matakuliah    DEFAULT     �   ALTER TABLE ONLY kampus.mahasiswas_matakuliah ALTER COLUMN id_matakuliah SET DEFAULT nextval('kampus.mahasiswas_matakuliah_id_matakuliah_seq'::regclass);
 R   ALTER TABLE kampus.mahasiswas_matakuliah ALTER COLUMN id_matakuliah DROP DEFAULT;
       kampus       postgres    false    216    204            �
           2604    24626    matakuliah id    DEFAULT     n   ALTER TABLE ONLY kampus.matakuliah ALTER COLUMN id SET DEFAULT nextval('kampus.matakuliah_id_seq'::regclass);
 <   ALTER TABLE kampus.matakuliah ALTER COLUMN id DROP DEFAULT;
       kampus       postgres    false    198    197    198            D          0    24765    dosen_alamats 
   TABLE DATA               k   COPY kampus.dosen_alamats (id, jalan, no_rumah, created_at, updated_at, deleted_at, id_dosens) FROM stdin;
    kampus       postgres    false    208   �i       >          0    24721    dosens 
   TABLE DATA               T   COPY kampus.dosens (id, nama, nidn, created_at, updated_at, deleted_at) FROM stdin;
    kampus       postgres    false    202   �i       B          0    24747    dosens_matakuliah 
   TABLE DATA               m   COPY kampus.dosens_matakuliah (id, created_at, updated_at, deleted_at, id_dosens, id_matakuliah) FROM stdin;
    kampus       postgres    false    206   �i       F          0    24778    mahasiswa_alamats 
   TABLE DATA               s   COPY kampus.mahasiswa_alamats (id, jalan, no_rumah, created_at, updated_at, deleted_at, id_mahasiswas) FROM stdin;
    kampus       postgres    false    210   j       <          0    24679 
   mahasiswas 
   TABLE DATA               W   COPY kampus.mahasiswas (id, nama, nim, created_at, updated_at, deleted_at) FROM stdin;
    kampus       postgres    false    200   %j       @          0    24729    mahasiswas_matakuliah 
   TABLE DATA               u   COPY kampus.mahasiswas_matakuliah (id, created_at, updated_at, deleted_at, id_mahasiswas, id_matakuliah) FROM stdin;
    kampus       postgres    false    204   Bj       :          0    24623 
   matakuliah 
   TABLE DATA               ^   COPY kampus.matakuliah (id, nama_matkul, sks, created_at, updated_at, deleted_at) FROM stdin;
    kampus       postgres    false    198   _j       b           0    0    dosen_alamats_id_dosens_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('kampus.dosen_alamats_id_dosens_seq', 1, false);
            kampus       postgres    false    211            c           0    0    dosen_alamats_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('kampus.dosen_alamats_id_seq', 1, false);
            kampus       postgres    false    207            d           0    0    dosens_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('kampus.dosens_id_seq', 1, false);
            kampus       postgres    false    201            e           0    0    dosens_matakuliah_id_dosens_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('kampus.dosens_matakuliah_id_dosens_seq', 1, false);
            kampus       postgres    false    212            f           0    0 #   dosens_matakuliah_id_matakuliah_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('kampus.dosens_matakuliah_id_matakuliah_seq', 1, false);
            kampus       postgres    false    215            g           0    0    dosens_matakuliah_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('kampus.dosens_matakuliah_id_seq', 1, false);
            kampus       postgres    false    205            h           0    0 #   mahasiswa_alamats_id_mahasiswas_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('kampus.mahasiswa_alamats_id_mahasiswas_seq', 1, false);
            kampus       postgres    false    213            i           0    0    mahasiswa_alamats_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('kampus.mahasiswa_alamats_id_seq', 1, false);
            kampus       postgres    false    209            j           0    0    mahasiswas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('kampus.mahasiswas_id_seq', 1, false);
            kampus       postgres    false    199            k           0    0 '   mahasiswas_matakuliah_id_mahasiswas_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('kampus.mahasiswas_matakuliah_id_mahasiswas_seq', 1, false);
            kampus       postgres    false    214            l           0    0 '   mahasiswas_matakuliah_id_matakuliah_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('kampus.mahasiswas_matakuliah_id_matakuliah_seq', 1, false);
            kampus       postgres    false    216            m           0    0    mahasiswas_matakuliah_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('kampus.mahasiswas_matakuliah_id_seq', 1, false);
            kampus       postgres    false    203            n           0    0    matakuliah_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('kampus.matakuliah_id_seq', 1, false);
            kampus       postgres    false    197            �
           2606    24770     dosen_alamats dosen_alamats_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY kampus.dosen_alamats
    ADD CONSTRAINT dosen_alamats_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY kampus.dosen_alamats DROP CONSTRAINT dosen_alamats_pkey;
       kampus         postgres    false    208            �
           2606    24752 (   dosens_matakuliah dosens_matakuliah_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY kampus.dosens_matakuliah
    ADD CONSTRAINT dosens_matakuliah_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY kampus.dosens_matakuliah DROP CONSTRAINT dosens_matakuliah_pkey;
       kampus         postgres    false    206            �
           2606    24726    dosens dosens_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY kampus.dosens
    ADD CONSTRAINT dosens_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY kampus.dosens DROP CONSTRAINT dosens_pkey;
       kampus         postgres    false    202            �
           2606    24783 (   mahasiswa_alamats mahasiswa_alamats_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY kampus.mahasiswa_alamats
    ADD CONSTRAINT mahasiswa_alamats_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY kampus.mahasiswa_alamats DROP CONSTRAINT mahasiswa_alamats_pkey;
       kampus         postgres    false    210            �
           2606    24734 0   mahasiswas_matakuliah mahasiswas_matakuliah_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY kampus.mahasiswas_matakuliah
    ADD CONSTRAINT mahasiswas_matakuliah_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY kampus.mahasiswas_matakuliah DROP CONSTRAINT mahasiswas_matakuliah_pkey;
       kampus         postgres    false    204            �
           2606    24684    mahasiswas mahasiswas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY kampus.mahasiswas
    ADD CONSTRAINT mahasiswas_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY kampus.mahasiswas DROP CONSTRAINT mahasiswas_pkey;
       kampus         postgres    false    200            �
           2606    24628    matakuliah matakuliah_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY kampus.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY kampus.matakuliah DROP CONSTRAINT matakuliah_pkey;
       kampus         postgres    false    198            �
           2606    24796 *   dosen_alamats dosen_alamats_id_dosens_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kampus.dosen_alamats
    ADD CONSTRAINT dosen_alamats_id_dosens_fkey FOREIGN KEY (id_dosens) REFERENCES kampus.dosens(id);
 T   ALTER TABLE ONLY kampus.dosen_alamats DROP CONSTRAINT dosen_alamats_id_dosens_fkey;
       kampus       postgres    false    202    208    2737            �
           2606    24808 2   dosens_matakuliah dosens_matakuliah_id_dosens_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kampus.dosens_matakuliah
    ADD CONSTRAINT dosens_matakuliah_id_dosens_fkey FOREIGN KEY (id_dosens) REFERENCES kampus.dosens(id);
 \   ALTER TABLE ONLY kampus.dosens_matakuliah DROP CONSTRAINT dosens_matakuliah_id_dosens_fkey;
       kampus       postgres    false    206    202    2737            �
           2606    24844 6   dosens_matakuliah dosens_matakuliah_id_matakuliah_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kampus.dosens_matakuliah
    ADD CONSTRAINT dosens_matakuliah_id_matakuliah_fkey FOREIGN KEY (id_matakuliah) REFERENCES kampus.matakuliah(id);
 `   ALTER TABLE ONLY kampus.dosens_matakuliah DROP CONSTRAINT dosens_matakuliah_id_matakuliah_fkey;
       kampus       postgres    false    198    206    2733            �
           2606    24820 6   mahasiswa_alamats mahasiswa_alamats_id_mahasiswas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kampus.mahasiswa_alamats
    ADD CONSTRAINT mahasiswa_alamats_id_mahasiswas_fkey FOREIGN KEY (id_mahasiswas) REFERENCES kampus.mahasiswas(id);
 `   ALTER TABLE ONLY kampus.mahasiswa_alamats DROP CONSTRAINT mahasiswa_alamats_id_mahasiswas_fkey;
       kampus       postgres    false    210    200    2735            �
           2606    24832 >   mahasiswas_matakuliah mahasiswas_matakuliah_id_mahasiswas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kampus.mahasiswas_matakuliah
    ADD CONSTRAINT mahasiswas_matakuliah_id_mahasiswas_fkey FOREIGN KEY (id_mahasiswas) REFERENCES kampus.mahasiswas(id);
 h   ALTER TABLE ONLY kampus.mahasiswas_matakuliah DROP CONSTRAINT mahasiswas_matakuliah_id_mahasiswas_fkey;
       kampus       postgres    false    2735    204    200            �
           2606    24856 >   mahasiswas_matakuliah mahasiswas_matakuliah_id_matakuliah_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kampus.mahasiswas_matakuliah
    ADD CONSTRAINT mahasiswas_matakuliah_id_matakuliah_fkey FOREIGN KEY (id_matakuliah) REFERENCES kampus.matakuliah(id);
 h   ALTER TABLE ONLY kampus.mahasiswas_matakuliah DROP CONSTRAINT mahasiswas_matakuliah_id_matakuliah_fkey;
       kampus       postgres    false    198    204    2733            D      x������ � �      >      x������ � �      B      x������ � �      F      x������ � �      <      x������ � �      @      x������ � �      :      x������ � �     