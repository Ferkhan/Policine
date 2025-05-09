PGDMP  .    9                }            DB_Policine    17.4    17.4 M               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            !           1262    16388    DB_Policine    DATABASE     s   CREATE DATABASE "DB_Policine" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-MX';
    DROP DATABASE "DB_Policine";
                     ferkhan    false            �            1259    16395    usuario    TABLE     �   CREATE TABLE public.usuario (
    usuario_id integer NOT NULL,
    nombre_completo text NOT NULL,
    correo text NOT NULL,
    clave text NOT NULL,
    direccion text NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.usuario;
       public         heap r       ferkhan    false            �            1259    16401    USUARIO_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public."USUARIO_usuario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."USUARIO_usuario_id_seq";
       public               ferkhan    false    217            "           0    0    USUARIO_usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."USUARIO_usuario_id_seq" OWNED BY public.usuario.usuario_id;
          public               ferkhan    false    218            �            1259    16402    asiento_reservado    TABLE     9  CREATE TABLE public.asiento_reservado (
    asiento_id integer NOT NULL,
    sala_id integer NOT NULL,
    fila_letra character(1) NOT NULL,
    columna_num integer NOT NULL,
    estado_reservado boolean DEFAULT true NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL,
    funcion_id integer NOT NULL
);
 %   DROP TABLE public.asiento_reservado;
       public         heap r       postgres    false            �            1259    16407    asiento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.asiento_id_seq;
       public               postgres    false    219            #           0    0    asiento_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.asiento_id_seq OWNED BY public.asiento_reservado.asiento_id;
          public               postgres    false    220            �            1259    16408    clasificacion    TABLE     �   CREATE TABLE public.clasificacion (
    clasificacion_id integer NOT NULL,
    nombre text NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
 !   DROP TABLE public.clasificacion;
       public         heap r       ferkhan    false            �            1259    16414 "   clasificacion_clasificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clasificacion_clasificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.clasificacion_clasificacion_id_seq;
       public               ferkhan    false    221            $           0    0 "   clasificacion_clasificacion_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.clasificacion_clasificacion_id_seq OWNED BY public.clasificacion.clasificacion_id;
          public               ferkhan    false    222            �            1259    16415    factura    TABLE     �   CREATE TABLE public.factura (
    factura_id integer NOT NULL,
    reservacion_id integer NOT NULL,
    precio_total numeric(6,2) NOT NULL,
    fecha_pago date NOT NULL,
    codigo_qr text,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.factura;
       public         heap r       ferkhan    false            �            1259    16421    factura_factura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.factura_factura_id_seq;
       public               ferkhan    false    223            %           0    0    factura_factura_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.factura_factura_id_seq OWNED BY public.factura.factura_id;
          public               ferkhan    false    224            �            1259    16422    funcion    TABLE     0  CREATE TABLE public.funcion (
    funcion_id integer NOT NULL,
    pelicula_id integer NOT NULL,
    sala_id integer NOT NULL,
    fecha_funcion date NOT NULL,
    hora_inicio time without time zone NOT NULL,
    precio_entrada numeric(4,2) NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.funcion;
       public         heap r       ferkhan    false            �            1259    16426    funcion_funcion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.funcion_funcion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.funcion_funcion_id_seq;
       public               ferkhan    false    225            &           0    0    funcion_funcion_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.funcion_funcion_id_seq OWNED BY public.funcion.funcion_id;
          public               ferkhan    false    226            �            1259    16427    genero    TABLE     �   CREATE TABLE public.genero (
    genero_id integer NOT NULL,
    nombre text NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.genero;
       public         heap r       ferkhan    false            �            1259    16433    genero_genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.genero_genero_id_seq;
       public               ferkhan    false    227            '           0    0    genero_genero_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.genero_genero_id_seq OWNED BY public.genero.genero_id;
          public               ferkhan    false    228            �            1259    16434    pelicula    TABLE     �  CREATE TABLE public.pelicula (
    pelicula_id integer NOT NULL,
    clasificacion_id integer NOT NULL,
    genero_id integer NOT NULL,
    titulo text NOT NULL,
    director text NOT NULL,
    sinopsis text NOT NULL,
    duracion_min integer NOT NULL,
    fecha_estreno date NOT NULL,
    portada_imagen text,
    trailer_url text,
    estado_cartelera boolean DEFAULT true NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap r       ferkhan    false            �            1259    16441    pelicula_pelicula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pelicula_pelicula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pelicula_pelicula_id_seq;
       public               ferkhan    false    229            (           0    0    pelicula_pelicula_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pelicula_pelicula_id_seq OWNED BY public.pelicula.pelicula_id;
          public               ferkhan    false    230            �            1259    16442    reservacion    TABLE       CREATE TABLE public.reservacion (
    reservacion_id integer NOT NULL,
    usuario_id integer NOT NULL,
    horario_id integer NOT NULL,
    asiento_id integer NOT NULL,
    fecha_reservacion date NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.reservacion;
       public         heap r       ferkhan    false            �            1259    16446    reservacion_reservacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reservacion_reservacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.reservacion_reservacion_id_seq;
       public               ferkhan    false    231            )           0    0    reservacion_reservacion_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.reservacion_reservacion_id_seq OWNED BY public.reservacion.reservacion_id;
          public               ferkhan    false    232            �            1259    16447    sala    TABLE     �   CREATE TABLE public.sala (
    sala_id integer NOT NULL,
    nombre text NOT NULL,
    capacidad integer NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.sala;
       public         heap r       postgres    false            �            1259    16453    sala_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sala_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.sala_id_seq;
       public               postgres    false    233            *           0    0    sala_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.sala_id_seq OWNED BY public.sala.sala_id;
          public               postgres    false    234            K           2604    16454    asiento_reservado asiento_id    DEFAULT     z   ALTER TABLE ONLY public.asiento_reservado ALTER COLUMN asiento_id SET DEFAULT nextval('public.asiento_id_seq'::regclass);
 K   ALTER TABLE public.asiento_reservado ALTER COLUMN asiento_id DROP DEFAULT;
       public               postgres    false    220    219            N           2604    16455    clasificacion clasificacion_id    DEFAULT     �   ALTER TABLE ONLY public.clasificacion ALTER COLUMN clasificacion_id SET DEFAULT nextval('public.clasificacion_clasificacion_id_seq'::regclass);
 M   ALTER TABLE public.clasificacion ALTER COLUMN clasificacion_id DROP DEFAULT;
       public               ferkhan    false    222    221            P           2604    16456    factura factura_id    DEFAULT     x   ALTER TABLE ONLY public.factura ALTER COLUMN factura_id SET DEFAULT nextval('public.factura_factura_id_seq'::regclass);
 A   ALTER TABLE public.factura ALTER COLUMN factura_id DROP DEFAULT;
       public               ferkhan    false    224    223            R           2604    16457    funcion funcion_id    DEFAULT     x   ALTER TABLE ONLY public.funcion ALTER COLUMN funcion_id SET DEFAULT nextval('public.funcion_funcion_id_seq'::regclass);
 A   ALTER TABLE public.funcion ALTER COLUMN funcion_id DROP DEFAULT;
       public               ferkhan    false    226    225            T           2604    16458    genero genero_id    DEFAULT     t   ALTER TABLE ONLY public.genero ALTER COLUMN genero_id SET DEFAULT nextval('public.genero_genero_id_seq'::regclass);
 ?   ALTER TABLE public.genero ALTER COLUMN genero_id DROP DEFAULT;
       public               ferkhan    false    228    227            V           2604    16459    pelicula pelicula_id    DEFAULT     |   ALTER TABLE ONLY public.pelicula ALTER COLUMN pelicula_id SET DEFAULT nextval('public.pelicula_pelicula_id_seq'::regclass);
 C   ALTER TABLE public.pelicula ALTER COLUMN pelicula_id DROP DEFAULT;
       public               ferkhan    false    230    229            Y           2604    16460    reservacion reservacion_id    DEFAULT     �   ALTER TABLE ONLY public.reservacion ALTER COLUMN reservacion_id SET DEFAULT nextval('public.reservacion_reservacion_id_seq'::regclass);
 I   ALTER TABLE public.reservacion ALTER COLUMN reservacion_id DROP DEFAULT;
       public               ferkhan    false    232    231            [           2604    16461    sala sala_id    DEFAULT     g   ALTER TABLE ONLY public.sala ALTER COLUMN sala_id SET DEFAULT nextval('public.sala_id_seq'::regclass);
 ;   ALTER TABLE public.sala ALTER COLUMN sala_id DROP DEFAULT;
       public               postgres    false    234    233            I           2604    16462    usuario usuario_id    DEFAULT     z   ALTER TABLE ONLY public.usuario ALTER COLUMN usuario_id SET DEFAULT nextval('public."USUARIO_usuario_id_seq"'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN usuario_id DROP DEFAULT;
       public               ferkhan    false    218    217                      0    16402    asiento_reservado 
   TABLE DATA           �   COPY public.asiento_reservado (asiento_id, sala_id, fila_letra, columna_num, estado_reservado, estado_registro, funcion_id) FROM stdin;
    public               postgres    false    219   i`                 0    16408    clasificacion 
   TABLE DATA           R   COPY public.clasificacion (clasificacion_id, nombre, estado_registro) FROM stdin;
    public               ferkhan    false    221   �`                 0    16415    factura 
   TABLE DATA           s   COPY public.factura (factura_id, reservacion_id, precio_total, fecha_pago, codigo_qr, estado_registro) FROM stdin;
    public               ferkhan    false    223   �`                 0    16422    funcion 
   TABLE DATA           �   COPY public.funcion (funcion_id, pelicula_id, sala_id, fecha_funcion, hora_inicio, precio_entrada, estado_registro) FROM stdin;
    public               ferkhan    false    225   �`                 0    16427    genero 
   TABLE DATA           D   COPY public.genero (genero_id, nombre, estado_registro) FROM stdin;
    public               ferkhan    false    227   �b                 0    16434    pelicula 
   TABLE DATA           �   COPY public.pelicula (pelicula_id, clasificacion_id, genero_id, titulo, director, sinopsis, duracion_min, fecha_estreno, portada_imagen, trailer_url, estado_cartelera, estado_registro) FROM stdin;
    public               ferkhan    false    229   dc                 0    16442    reservacion 
   TABLE DATA           }   COPY public.reservacion (reservacion_id, usuario_id, horario_id, asiento_id, fecha_reservacion, estado_registro) FROM stdin;
    public               ferkhan    false    231   �o                 0    16447    sala 
   TABLE DATA           K   COPY public.sala (sala_id, nombre, capacidad, estado_registro) FROM stdin;
    public               postgres    false    233   �o       
          0    16395    usuario 
   TABLE DATA           i   COPY public.usuario (usuario_id, nombre_completo, correo, clave, direccion, estado_registro) FROM stdin;
    public               ferkhan    false    217   fp       +           0    0    USUARIO_usuario_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."USUARIO_usuario_id_seq"', 12, true);
          public               ferkhan    false    218            ,           0    0    asiento_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.asiento_id_seq', 1, true);
          public               postgres    false    220            -           0    0 "   clasificacion_clasificacion_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.clasificacion_clasificacion_id_seq', 4, true);
          public               ferkhan    false    222            .           0    0    factura_factura_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.factura_factura_id_seq', 1, false);
          public               ferkhan    false    224            /           0    0    funcion_funcion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.funcion_funcion_id_seq', 84, true);
          public               ferkhan    false    226            0           0    0    genero_genero_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.genero_genero_id_seq', 14, true);
          public               ferkhan    false    228            1           0    0    pelicula_pelicula_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pelicula_pelicula_id_seq', 28, true);
          public               ferkhan    false    230            2           0    0    reservacion_reservacion_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.reservacion_reservacion_id_seq', 1, false);
          public               ferkhan    false    232            3           0    0    sala_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sala_id_seq', 1, false);
          public               postgres    false    234            ^           2606    16464    usuario USUARIO_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "USUARIO_pkey" PRIMARY KEY (usuario_id);
 @   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "USUARIO_pkey";
       public                 ferkhan    false    217            `           2606    16466    asiento_reservado asiento_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_pkey PRIMARY KEY (asiento_id);
 H   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_pkey;
       public                 postgres    false    219            b           2606    16468 !   clasificacion clasificacion_pkey1 
   CONSTRAINT     m   ALTER TABLE ONLY public.clasificacion
    ADD CONSTRAINT clasificacion_pkey1 PRIMARY KEY (clasificacion_id);
 K   ALTER TABLE ONLY public.clasificacion DROP CONSTRAINT clasificacion_pkey1;
       public                 ferkhan    false    221            d           2606    16470    factura factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (factura_id);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public                 ferkhan    false    223            f           2606    16472    funcion funcion_pkey1 
   CONSTRAINT     [   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pkey1 PRIMARY KEY (funcion_id);
 ?   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pkey1;
       public                 ferkhan    false    225            h           2606    16474    genero genero_pkey1 
   CONSTRAINT     X   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey1 PRIMARY KEY (genero_id);
 =   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey1;
       public                 ferkhan    false    227            j           2606    16476    pelicula pelicula_pkey1 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey1 PRIMARY KEY (pelicula_id);
 A   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey1;
       public                 ferkhan    false    229            l           2606    16478    reservacion reservacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_pkey PRIMARY KEY (reservacion_id);
 F   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_pkey;
       public                 ferkhan    false    231            n           2606    16480    sala sala_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (sala_id);
 8   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
       public                 postgres    false    233            o           2606    16481 8   asiento_reservado asiento_reservado_fecha_reservado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_reservado_fecha_reservado_fkey FOREIGN KEY (funcion_id) REFERENCES public.funcion(funcion_id) NOT VALID;
 b   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_reservado_fecha_reservado_fkey;
       public               postgres    false    225    219    4710            p           2606    16486 #   asiento_reservado asiento_sala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_sala_fkey FOREIGN KEY (sala_id) REFERENCES public.sala(sala_id);
 M   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_sala_fkey;
       public               postgres    false    4718    219    233            q           2606    16491 #   factura factura_reservacion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_reservacion_id_fkey FOREIGN KEY (reservacion_id) REFERENCES public.reservacion(reservacion_id);
 M   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_reservacion_id_fkey;
       public               ferkhan    false    223    231    4716            r           2606    16496     funcion funcion_pelicula_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pelicula_id_fkey FOREIGN KEY (pelicula_id) REFERENCES public.pelicula(pelicula_id);
 J   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pelicula_id_fkey;
       public               ferkhan    false    4714    225    229            s           2606    16501    funcion funcion_sala_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_sala_id_fkey FOREIGN KEY (sala_id) REFERENCES public.sala(sala_id);
 F   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_sala_id_fkey;
       public               ferkhan    false    233    4718    225            t           2606    16506 '   pelicula pelicula_clasificacion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_clasificacion_id_fkey FOREIGN KEY (clasificacion_id) REFERENCES public.clasificacion(clasificacion_id) NOT VALID;
 Q   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_clasificacion_id_fkey;
       public               ferkhan    false    4706    229    221            u           2606    16511     pelicula pelicula_genero_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_genero_id_fkey FOREIGN KEY (genero_id) REFERENCES public.genero(genero_id) NOT VALID;
 J   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_genero_id_fkey;
       public               ferkhan    false    227    4712    229            v           2606    16516 '   reservacion reservacion_asiento_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_asiento_id_fkey FOREIGN KEY (asiento_id) REFERENCES public.asiento_reservado(asiento_id) NOT VALID;
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_asiento_id_fkey;
       public               ferkhan    false    4704    231    219            w           2606    16521 '   reservacion reservacion_horario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_horario_id_fkey FOREIGN KEY (horario_id) REFERENCES public.funcion(funcion_id);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_horario_id_fkey;
       public               ferkhan    false    231    4710    225            x           2606    16526 '   reservacion reservacion_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_usuario_id_fkey;
       public               ferkhan    false    217    231    4702                  x�3�4�t�44�,BC�=... !         #   x�3��,�2�p�54���, e�	"c���� n�            x������ � �         �  x���Qn�0E�oj/1ș��Z��t�(�mu_��F>���@�[�}��G�����Z׫�k��q��=�W�/�
!z�u��
��u�)��
�����X��0Y���fi�I�����W�=yr�{��I�Jb�Z�1�����Z��ʚ�?w�{rke>'V�b�Vx�`1+�e��K(Ҁ�����e��BĆ42���Z���=�'oZ��V`⎊�x��*޵O����3k�\��=��˭�D�
\���.a��K�V�!��~��p�ܓ<���
]�V�r��.��YQ�޴�nR�K_��¥Ǟ�ɥw����V��*߸LT�q����R�K����r?��_�ti %C0��l(I泡"9�A�Ɇx��� ���Qd4��d�V`2E��������
]�zf�󠌹'g�[+p�U+p�u����L�
\fH�._��~���         �   x�M�;�0D��)r�I��VP$
��Y���^#��VT!����L�f4kyx$5��;:3f�`ЍTÑB�!��ޡXʼ��t(�/9,`�1Q`_6���%��(�C�$��vF��gRO��HR�)���J����!&��E�ߗ��?���S��R�	I�B         \  x��X�n�H]3_Q`%�dYR��,��;�e;NЀQ"KTYESEʦw�)��"�Af��я͹U��t7z�6MQ�}�{ι���\/;�:c�2K�+��J	c���=�Ș���x�cͦ2�q��h�Y�3"�O�%�&8�t�q�b��y��fq�gi)L!�\��؈�A����n���h��^����/><>>��tY�3�7� ҙ�?���ۓ��գ�����ї�n5�w���iW�A�߅���x�����f#�ߟ�׆�B�����3�sVPE�-��,�i!��\
5&	��k��(�hv�Œg���LXfC��D��K%�s|�(*���tV�H(����n򌫳w�ݙҖe�Y��AvP�^H%
[��Dͧ��q<�R�%�H���py���c#N�k�v;h�D�/�	Nx�����,8{4�+3&��]�	��S�q��d����g�����{"�:�X�E�
S� A^{-���GR�� J��=wA��ߡ��&�>`d��CóHZv�M̆:ϵ���I1gs�J�t�;>�1"U�Wh� ]32∢K����6pE��c�pBaX��F�ݽQ�a�p6 x���4��p�W�p��g   V�"IT5�VX<�²�H����]��	nP�Tk�&��Mۈ{��4�#n��4�ɢ��g�|�^\�rY�ϋQ�ln�L=��� 
iw�'z)���~���r�� ��*u�kT eCYT���k4��#�{�����|6�gҞ�csrt�����X=�D�-���D�Q1�  �O<Z�G����)Um��-x�����rf<��DZf�7�S�#��.a+�R�H	FF �6}$�^%j
g
9�8RȽ�G�����K��y<o�������_��ju�?6>^���$�#�N��k]�i�M .2vƭ�04광�T �eR��Dz�Ib+�|��S���G���9�:ę��K
�����i!u�` ����4���.�E�"ZJ'&�R�Q\K���"��(�"�(a�� �A��W�#���<Q{a|svX*i��e����6��P�h�n��.��ԧ�h�Ll��a�ّ,�E����f+�}��t��!uĆ\釚�Y��	�����D��,�XO��
aZtHj�ό���Miƛ}Ķ�l���ml8��R��PF�:�,����5��t!���t޺���E� Q���
�;G�%i�Ƽ�� ������(T �r<dY��=�n�d�e	�GJ������Q/�7RYb��?Zp�]�X��˅}I$�gP�`DwP�GDPS��esm����R	����PE����:�H��r���ڃ����X���S�"?�����4�~V'g�����ٮ�/���|�.{wǫ�^�� D$�n����/X�bGb��Ea�	/��Cy���4�7�v���:A�K��n0�L�X�N�����U!s4 ���t-�rE�� 4"��ɕ�����9�N��[�q��^o�2�W4���;^N�W��஽��6�8o9o9�x&Bl	Bqx����Bh�.%H��l���˾�Ch�>!b�j����M/[ܔJ���	����*c�@��3�P��$-g���59t�k�D2���zM�^">���jV^I��Ԙ؋my�0�`E���f)9bom6�DT}22��kTK�>�-Y���i��GdW[ޑN2�"�i,2v�y����E�#1췚;t����Y)V����r�nȬ��h%����}�@��덥q��3���l#+��;B��ׂ�5*sJ�>��Py�_=�U��*�M��󓆊cd��G�NaöG���' �v�K���-k�����\c�f����)A�����tV.����+��.W�����7��U�?�jE�8NsR6� FD����Xw�i�F���%@���-$��|�B�W��{�"gY��x�"�+�x�#�Җ>�7gPN����N�ܤ��&�MVl�����-K䳞#|O1�M�P����C<�����U��t��Mй�fp��X+#ǜ�ڐ]��6�;�t�ml��L���P�B���(-�{nw�
���.e�����nA�̓��ZD���X����č��)<E6�6��'<u@�tֵ��B��H�޻\�c�@�u:#��!|���zF�Woe�|�#�,��h{���d���TX�VX0���n=fMo���]��q�f�aa����s��Ј���h�np���z�"��pIc��X�c��x�xCS��Jf�FP>8��A!w�/X��q	7�jb}%W�ԙ������a�v���6��w�f%�b��\�9����Tf����a��GN��UM�-�*���p8;��������j�����AU^�{^3������3�����P�k?N���ۻ?��p�#�ct?zO��&�#��]���m�.��}��-7��,_�fƆ3KG��׈rWs^|�x�?=>jt�{���o0����,N �� +:��Ui����*�a@V�W��;���\�F�H�lC�p��p{m���6x�0BF�zQ���xẍ{B	�5�h�n"�}��}C���/���lDMJ�s�P}I����۟^N>�Z�FPB&�9�L�+���L�@]��R�Aa��2E�ׄ��hv���ӑ)�����u�~�c<{Pu�%��kl^���K�ު���<��!�
���a9y�}:��k*� �i�Q����sC�2��2���)���%�ɃA�Sv���-l��4l9*��QC��AZ�� fVӒ��� g-��^n�������&�v� !Q�j j(�_-*:��*9� ~x媛�ڠ��
Y�&��Vu���K���hx2�Mo�z?��2�S�Ƅ��� ��F�����z�8�=��f�g3Y�@��hO�n���*ZJ���ڽv��-��%�b^������e����E����`Ya���C|C%n������Sk��_���V�e���Fxߩ��N]��>���%5�]�H#�C���9W�A�P�2�m�)�����t��_$�8t?$^B6/"�׶�����L!Wn;��;�j�^��w��:�{�-�,(8_���J/�ǋ����O�]v��/�}�Tݳ���_߿{��Y-�            x������ � �         i   x�-�9� D��>EN�l@��i��P����Ce���B�.o�V����(�Fh'�xP6��I"��Z(��B��<T9��B���S��t�6��th��빧g���'z      
     x�u��N�0����T^�8�����@�.�%�(�E������*Tp�M���F�a�>s�~D�Ʀ�rkt��JM��ei�b�;.J�(<����`$�����ἤ�1�WP͜�ƙ줥��RQ9�j��wTJx�f
���;��b:.iu&!P]3�^r�*m�V�Mc�.�.u��a5K�b]�طŏ�!�a<f߫�1�_�_���f�#�6�~1;Kص�\ܧ.	0׫m���`��	{�U1��e�ϟ��o!�cٍ�     