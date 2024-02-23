PGDMP  9    7                |            DB_Policine     16.2 (Ubuntu 16.2-1.pgdg22.04+1)     16.2 (Ubuntu 16.2-1.pgdg22.04+1) U    x           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            {           1262    16564    DB_Policine    DATABASE     y   CREATE DATABASE "DB_Policine" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE "DB_Policine";
                ferkhan    false            �            1259    16727    registro_sesion    TABLE     �   CREATE TABLE public.registro_sesion (
    registro_id integer NOT NULL,
    usuario_id integer NOT NULL,
    resultado_ingreso text NOT NULL,
    estado_sesion boolean DEFAULT true NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
 #   DROP TABLE public.registro_sesion;
       public         heap    ferkhan    false            �            1259    16726    REGISTRO_SESION_registro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."REGISTRO_SESION_registro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."REGISTRO_SESION_registro_id_seq";
       public          ferkhan    false    222            |           0    0    REGISTRO_SESION_registro_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."REGISTRO_SESION_registro_id_seq" OWNED BY public.registro_sesion.registro_id;
          public          ferkhan    false    221            �            1259    16716    usuario    TABLE     �   CREATE TABLE public.usuario (
    usuario_id integer NOT NULL,
    nombre_completo text NOT NULL,
    correo text NOT NULL,
    clave text NOT NULL,
    direccion text NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    ferkhan    false            �            1259    16715    USUARIO_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public."USUARIO_usuario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."USUARIO_usuario_id_seq";
       public          ferkhan    false    220            }           0    0    USUARIO_usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."USUARIO_usuario_id_seq" OWNED BY public.usuario.usuario_id;
          public          ferkhan    false    219            �            1259    16565    asiento_reservado    TABLE     9  CREATE TABLE public.asiento_reservado (
    asiento_id integer NOT NULL,
    sala_id integer NOT NULL,
    fila_letra character(1) NOT NULL,
    columna_num integer NOT NULL,
    estado_reservado boolean DEFAULT true NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL,
    funcion_id integer NOT NULL
);
 %   DROP TABLE public.asiento_reservado;
       public         heap    postgres    false            �            1259    16570    asiento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.asiento_id_seq;
       public          postgres    false    215            ~           0    0    asiento_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.asiento_id_seq OWNED BY public.asiento_reservado.asiento_id;
          public          postgres    false    216            �            1259    24682    clasificacion    TABLE     �   CREATE TABLE public.clasificacion (
    clasificacion_id integer NOT NULL,
    nombre text NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
 !   DROP TABLE public.clasificacion;
       public         heap    ferkhan    false            �            1259    24681 "   clasificacion_clasificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clasificacion_clasificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.clasificacion_clasificacion_id_seq;
       public          ferkhan    false    224                       0    0 "   clasificacion_clasificacion_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.clasificacion_clasificacion_id_seq OWNED BY public.clasificacion.clasificacion_id;
          public          ferkhan    false    223            �            1259    24761    factura    TABLE     �   CREATE TABLE public.factura (
    factura_id integer NOT NULL,
    reservacion_id integer NOT NULL,
    precio_total numeric(6,2) NOT NULL,
    fecha_pago date NOT NULL,
    codigo_qr text,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.factura;
       public         heap    ferkhan    false            �            1259    24760    factura_factura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.factura_factura_id_seq;
       public          ferkhan    false    234            �           0    0    factura_factura_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.factura_factura_id_seq OWNED BY public.factura.factura_id;
          public          ferkhan    false    233            �            1259    24723    funcion    TABLE     0  CREATE TABLE public.funcion (
    funcion_id integer NOT NULL,
    pelicula_id integer NOT NULL,
    sala_id integer NOT NULL,
    fecha_funcion date NOT NULL,
    hora_inicio time without time zone NOT NULL,
    precio_entrada numeric(4,2) NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.funcion;
       public         heap    ferkhan    false            �            1259    24722    funcion_funcion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.funcion_funcion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.funcion_funcion_id_seq;
       public          ferkhan    false    230            �           0    0    funcion_funcion_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.funcion_funcion_id_seq OWNED BY public.funcion.funcion_id;
          public          ferkhan    false    229            �            1259    24692    genero    TABLE     �   CREATE TABLE public.genero (
    genero_id integer NOT NULL,
    nombre text NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.genero;
       public         heap    ferkhan    false            �            1259    24691    genero_genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.genero_genero_id_seq;
       public          ferkhan    false    226            �           0    0    genero_genero_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.genero_genero_id_seq OWNED BY public.genero.genero_id;
          public          ferkhan    false    225            �            1259    24702    pelicula    TABLE     �  CREATE TABLE public.pelicula (
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
       public         heap    ferkhan    false            �            1259    24701    pelicula_pelicula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pelicula_pelicula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pelicula_pelicula_id_seq;
       public          ferkhan    false    228            �           0    0    pelicula_pelicula_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pelicula_pelicula_id_seq OWNED BY public.pelicula.pelicula_id;
          public          ferkhan    false    227            �            1259    24742    reservacion    TABLE       CREATE TABLE public.reservacion (
    reservacion_id integer NOT NULL,
    usuario_id integer NOT NULL,
    horario_id integer NOT NULL,
    asiento_id integer NOT NULL,
    fecha_reservacion date NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.reservacion;
       public         heap    ferkhan    false            �            1259    24741    reservacion_reservacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reservacion_reservacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.reservacion_reservacion_id_seq;
       public          ferkhan    false    232            �           0    0    reservacion_reservacion_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.reservacion_reservacion_id_seq OWNED BY public.reservacion.reservacion_id;
          public          ferkhan    false    231            �            1259    16612    sala    TABLE     �   CREATE TABLE public.sala (
    sala_id integer NOT NULL,
    nombre text NOT NULL,
    capacidad integer NOT NULL,
    estado_registro boolean DEFAULT true NOT NULL
);
    DROP TABLE public.sala;
       public         heap    postgres    false            �            1259    16617    sala_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sala_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.sala_id_seq;
       public          postgres    false    217            �           0    0    sala_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.sala_id_seq OWNED BY public.sala.sala_id;
          public          postgres    false    218            �           2604    16624    asiento_reservado asiento_id    DEFAULT     z   ALTER TABLE ONLY public.asiento_reservado ALTER COLUMN asiento_id SET DEFAULT nextval('public.asiento_id_seq'::regclass);
 K   ALTER TABLE public.asiento_reservado ALTER COLUMN asiento_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    24685    clasificacion clasificacion_id    DEFAULT     �   ALTER TABLE ONLY public.clasificacion ALTER COLUMN clasificacion_id SET DEFAULT nextval('public.clasificacion_clasificacion_id_seq'::regclass);
 M   ALTER TABLE public.clasificacion ALTER COLUMN clasificacion_id DROP DEFAULT;
       public          ferkhan    false    224    223    224            �           2604    24764    factura factura_id    DEFAULT     x   ALTER TABLE ONLY public.factura ALTER COLUMN factura_id SET DEFAULT nextval('public.factura_factura_id_seq'::regclass);
 A   ALTER TABLE public.factura ALTER COLUMN factura_id DROP DEFAULT;
       public          ferkhan    false    234    233    234            �           2604    24726    funcion funcion_id    DEFAULT     x   ALTER TABLE ONLY public.funcion ALTER COLUMN funcion_id SET DEFAULT nextval('public.funcion_funcion_id_seq'::regclass);
 A   ALTER TABLE public.funcion ALTER COLUMN funcion_id DROP DEFAULT;
       public          ferkhan    false    230    229    230            �           2604    24695    genero genero_id    DEFAULT     t   ALTER TABLE ONLY public.genero ALTER COLUMN genero_id SET DEFAULT nextval('public.genero_genero_id_seq'::regclass);
 ?   ALTER TABLE public.genero ALTER COLUMN genero_id DROP DEFAULT;
       public          ferkhan    false    226    225    226            �           2604    24705    pelicula pelicula_id    DEFAULT     |   ALTER TABLE ONLY public.pelicula ALTER COLUMN pelicula_id SET DEFAULT nextval('public.pelicula_pelicula_id_seq'::regclass);
 C   ALTER TABLE public.pelicula ALTER COLUMN pelicula_id DROP DEFAULT;
       public          ferkhan    false    228    227    228            �           2604    16730    registro_sesion registro_id    DEFAULT     �   ALTER TABLE ONLY public.registro_sesion ALTER COLUMN registro_id SET DEFAULT nextval('public."REGISTRO_SESION_registro_id_seq"'::regclass);
 J   ALTER TABLE public.registro_sesion ALTER COLUMN registro_id DROP DEFAULT;
       public          ferkhan    false    222    221    222            �           2604    24745    reservacion reservacion_id    DEFAULT     �   ALTER TABLE ONLY public.reservacion ALTER COLUMN reservacion_id SET DEFAULT nextval('public.reservacion_reservacion_id_seq'::regclass);
 I   ALTER TABLE public.reservacion ALTER COLUMN reservacion_id DROP DEFAULT;
       public          ferkhan    false    231    232    232            �           2604    16632    sala sala_id    DEFAULT     g   ALTER TABLE ONLY public.sala ALTER COLUMN sala_id SET DEFAULT nextval('public.sala_id_seq'::regclass);
 ;   ALTER TABLE public.sala ALTER COLUMN sala_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16719    usuario usuario_id    DEFAULT     z   ALTER TABLE ONLY public.usuario ALTER COLUMN usuario_id SET DEFAULT nextval('public."USUARIO_usuario_id_seq"'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN usuario_id DROP DEFAULT;
       public          ferkhan    false    220    219    220            b          0    16565    asiento_reservado 
   TABLE DATA           �   COPY public.asiento_reservado (asiento_id, sala_id, fila_letra, columna_num, estado_reservado, estado_registro, funcion_id) FROM stdin;
    public          postgres    false    215   :j       k          0    24682    clasificacion 
   TABLE DATA           R   COPY public.clasificacion (clasificacion_id, nombre, estado_registro) FROM stdin;
    public          ferkhan    false    224   dj       u          0    24761    factura 
   TABLE DATA           s   COPY public.factura (factura_id, reservacion_id, precio_total, fecha_pago, codigo_qr, estado_registro) FROM stdin;
    public          ferkhan    false    234   �j       q          0    24723    funcion 
   TABLE DATA           �   COPY public.funcion (funcion_id, pelicula_id, sala_id, fecha_funcion, hora_inicio, precio_entrada, estado_registro) FROM stdin;
    public          ferkhan    false    230   �j       m          0    24692    genero 
   TABLE DATA           D   COPY public.genero (genero_id, nombre, estado_registro) FROM stdin;
    public          ferkhan    false    226   +k       o          0    24702    pelicula 
   TABLE DATA           �   COPY public.pelicula (pelicula_id, clasificacion_id, genero_id, titulo, director, sinopsis, duracion_min, fecha_estreno, portada_imagen, trailer_url, estado_cartelera, estado_registro) FROM stdin;
    public          ferkhan    false    228   �k       i          0    16727    registro_sesion 
   TABLE DATA           u   COPY public.registro_sesion (registro_id, usuario_id, resultado_ingreso, estado_sesion, estado_registro) FROM stdin;
    public          ferkhan    false    222   }n       s          0    24742    reservacion 
   TABLE DATA           }   COPY public.reservacion (reservacion_id, usuario_id, horario_id, asiento_id, fecha_reservacion, estado_registro) FROM stdin;
    public          ferkhan    false    232   �n       d          0    16612    sala 
   TABLE DATA           K   COPY public.sala (sala_id, nombre, capacidad, estado_registro) FROM stdin;
    public          postgres    false    217   �n       g          0    16716    usuario 
   TABLE DATA           i   COPY public.usuario (usuario_id, nombre_completo, correo, clave, direccion, estado_registro) FROM stdin;
    public          ferkhan    false    220   #o       �           0    0    REGISTRO_SESION_registro_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."REGISTRO_SESION_registro_id_seq"', 1, false);
          public          ferkhan    false    221            �           0    0    USUARIO_usuario_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."USUARIO_usuario_id_seq"', 2, true);
          public          ferkhan    false    219            �           0    0    asiento_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.asiento_id_seq', 1, true);
          public          postgres    false    216            �           0    0 "   clasificacion_clasificacion_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.clasificacion_clasificacion_id_seq', 4, true);
          public          ferkhan    false    223            �           0    0    factura_factura_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.factura_factura_id_seq', 1, false);
          public          ferkhan    false    233            �           0    0    funcion_funcion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.funcion_funcion_id_seq', 12, true);
          public          ferkhan    false    229            �           0    0    genero_genero_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.genero_genero_id_seq', 8, true);
          public          ferkhan    false    225            �           0    0    pelicula_pelicula_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pelicula_pelicula_id_seq', 7, true);
          public          ferkhan    false    227            �           0    0    reservacion_reservacion_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.reservacion_reservacion_id_seq', 1, false);
          public          ferkhan    false    231            �           0    0    sala_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sala_id_seq', 1, false);
          public          postgres    false    218            �           2606    16736 $   registro_sesion REGISTRO_SESION_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.registro_sesion
    ADD CONSTRAINT "REGISTRO_SESION_pkey" PRIMARY KEY (registro_id);
 P   ALTER TABLE ONLY public.registro_sesion DROP CONSTRAINT "REGISTRO_SESION_pkey";
       public            ferkhan    false    222            �           2606    16724    usuario USUARIO_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "USUARIO_pkey" PRIMARY KEY (usuario_id);
 @   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "USUARIO_pkey";
       public            ferkhan    false    220            �           2606    16635    asiento_reservado asiento_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_pkey PRIMARY KEY (asiento_id);
 H   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_pkey;
       public            postgres    false    215            �           2606    24690 !   clasificacion clasificacion_pkey1 
   CONSTRAINT     m   ALTER TABLE ONLY public.clasificacion
    ADD CONSTRAINT clasificacion_pkey1 PRIMARY KEY (clasificacion_id);
 K   ALTER TABLE ONLY public.clasificacion DROP CONSTRAINT clasificacion_pkey1;
       public            ferkhan    false    224            �           2606    24769    factura factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (factura_id);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            ferkhan    false    234            �           2606    24729    funcion funcion_pkey1 
   CONSTRAINT     [   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pkey1 PRIMARY KEY (funcion_id);
 ?   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pkey1;
       public            ferkhan    false    230            �           2606    24700    genero genero_pkey1 
   CONSTRAINT     X   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey1 PRIMARY KEY (genero_id);
 =   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey1;
       public            ferkhan    false    226            �           2606    24711    pelicula pelicula_pkey1 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey1 PRIMARY KEY (pelicula_id);
 A   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey1;
       public            ferkhan    false    228            �           2606    24748    reservacion reservacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_pkey PRIMARY KEY (reservacion_id);
 F   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_pkey;
       public            ferkhan    false    232            �           2606    16653    sala sala_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (sala_id);
 8   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
       public            postgres    false    217            �           2606    16737 8   registro_sesion REGISTRO_SESION_registro_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_sesion
    ADD CONSTRAINT "REGISTRO_SESION_registro_usuario_id_fkey" FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);
 d   ALTER TABLE ONLY public.registro_sesion DROP CONSTRAINT "REGISTRO_SESION_registro_usuario_id_fkey";
       public          ferkhan    false    222    220    3257            �           2606    24781 8   asiento_reservado asiento_reservado_fecha_reservado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_reservado_fecha_reservado_fkey FOREIGN KEY (funcion_id) REFERENCES public.funcion(funcion_id) NOT VALID;
 b   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_reservado_fecha_reservado_fkey;
       public          postgres    false    215    3267    230            �           2606    16656 #   asiento_reservado asiento_sala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_sala_fkey FOREIGN KEY (sala_id) REFERENCES public.sala(sala_id);
 M   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_sala_fkey;
       public          postgres    false    3255    215    217            �           2606    24770 #   factura factura_reservacion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_reservacion_id_fkey FOREIGN KEY (reservacion_id) REFERENCES public.reservacion(reservacion_id);
 M   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_reservacion_id_fkey;
       public          ferkhan    false    234    232    3269            �           2606    24730     funcion funcion_pelicula_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pelicula_id_fkey FOREIGN KEY (pelicula_id) REFERENCES public.pelicula(pelicula_id);
 J   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pelicula_id_fkey;
       public          ferkhan    false    230    3265    228            �           2606    24735    funcion funcion_sala_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_sala_id_fkey FOREIGN KEY (sala_id) REFERENCES public.sala(sala_id);
 F   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_sala_id_fkey;
       public          ferkhan    false    3255    230    217            �           2606    24712 '   pelicula pelicula_clasificacion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_clasificacion_id_fkey FOREIGN KEY (clasificacion_id) REFERENCES public.clasificacion(clasificacion_id) NOT VALID;
 Q   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_clasificacion_id_fkey;
       public          ferkhan    false    3261    224    228            �           2606    24717     pelicula pelicula_genero_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_genero_id_fkey FOREIGN KEY (genero_id) REFERENCES public.genero(genero_id) NOT VALID;
 J   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_genero_id_fkey;
       public          ferkhan    false    3263    226    228            �           2606    24786 '   reservacion reservacion_asiento_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_asiento_id_fkey FOREIGN KEY (asiento_id) REFERENCES public.asiento_reservado(asiento_id) NOT VALID;
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_asiento_id_fkey;
       public          ferkhan    false    215    3253    232            �           2606    24754 '   reservacion reservacion_horario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_horario_id_fkey FOREIGN KEY (horario_id) REFERENCES public.funcion(funcion_id);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_horario_id_fkey;
       public          ferkhan    false    232    3267    230            �           2606    24749 '   reservacion reservacion_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_usuario_id_fkey;
       public          ferkhan    false    3257    220    232            b      x�3�4�t�44�,BC�=... !      k   #   x�3��,�2�p�54���, e�	"c���� n�      u      x������ � �      q   g   x�}�A
�0D���.	jL��,=F�OtQd\~�B��h�^I�z�a�AxJ��?�/�v�!p�a��	ÖG�pb��)�`Ʋe����ێ�[)���DJ      m   n   x�3�tLN�<�9���ˈ�9?75%3�6�t)J��L8CR���LSΠ��ļ�T ۂ�3/-1�$3�1���,.I-���w.��M�f�	a*�+����Ec���� 7#6      o   �  x����n�0Ư�S�%�o&MSەm�:�n�4�:8��8vj;��mz��]�x��G���1��}���YL��p�ͥÒN҉��o�=���,���+�h�)��1]��l��+�}e2�q_��Z�]%��%�8�q&=jO_�n-j��%���]�Pbs�\�LXp�f����AB��4��(��X��`վ-,��t���u�6��f��Mq�F��������I|w2�~M�|��zlĦ��Kol�NM�a��	/l�KG�N	����A73�V2C��̀�L�F�J�وLN�~p4I^���o±�^�_��u}Tw��a4I����ɯ�s�vK	5L�R��
���9_���p���m(BAQޭm8�9���dQ)�r�[A�@��#I�)Iqr��sIw�����4�t�n�"�h �RY�D4����U�r��牂�h���\:���)K�0$�p�Ka��T۰B�s��q�%z(4�?Vr$�a���I Nz/�����"vi֛�K#{q�u��N���i0h8SQM�F���|E!(2���v*}��堽+<���:�*(p��x5!o�l�oI�JPqԡv�Jz��y��KܯOurߙ?��g�8*�i�����mM�0a� m�<�?î-+��$�T�Z����<j/��b��B~ƙ]|�g��4���ާ�5���'��y:��X~k��n�Z�n��      i      x������ � �      s      x������ � �      d   \   x�5�;�0���9'@u_��`e�������E�/��F0%<�Ō�*R����դ����C<҈��B߻6�H�q�W1f1v]�����'n      g   d   x�3�tK-�K�Sp,���/�L��s3s���s��FƜ�9
��y)�)��%\F���%@}!������`�CF~	\#D��'Q�-'�(��$�3F��� \&�     