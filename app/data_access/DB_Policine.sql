PGDMP                      |            DB_Policine     16.2 (Ubuntu 16.2-1.pgdg22.04+1)     16.2 (Ubuntu 16.2-1.pgdg22.04+1) M    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    16564    DB_Policine    DATABASE     y   CREATE DATABASE "DB_Policine" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE "DB_Policine";
                ferkhan    false            �            1259    16716    usuario    TABLE     �   CREATE TABLE public.usuario (
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
       public          ferkhan    false    220            o           0    0    USUARIO_usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."USUARIO_usuario_id_seq" OWNED BY public.usuario.usuario_id;
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
       public          postgres    false    215            p           0    0    asiento_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.asiento_id_seq OWNED BY public.asiento_reservado.asiento_id;
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
       public          ferkhan    false    222            q           0    0 "   clasificacion_clasificacion_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.clasificacion_clasificacion_id_seq OWNED BY public.clasificacion.clasificacion_id;
          public          ferkhan    false    221            �            1259    24761    factura    TABLE     �   CREATE TABLE public.factura (
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
       public          ferkhan    false    232            r           0    0    factura_factura_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.factura_factura_id_seq OWNED BY public.factura.factura_id;
          public          ferkhan    false    231            �            1259    24723    funcion    TABLE     0  CREATE TABLE public.funcion (
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
       public          ferkhan    false    228            s           0    0    funcion_funcion_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.funcion_funcion_id_seq OWNED BY public.funcion.funcion_id;
          public          ferkhan    false    227            �            1259    24692    genero    TABLE     �   CREATE TABLE public.genero (
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
       public          ferkhan    false    224            t           0    0    genero_genero_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.genero_genero_id_seq OWNED BY public.genero.genero_id;
          public          ferkhan    false    223            �            1259    24702    pelicula    TABLE     �  CREATE TABLE public.pelicula (
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
       public          ferkhan    false    226            u           0    0    pelicula_pelicula_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pelicula_pelicula_id_seq OWNED BY public.pelicula.pelicula_id;
          public          ferkhan    false    225            �            1259    24742    reservacion    TABLE       CREATE TABLE public.reservacion (
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
       public          ferkhan    false    230            v           0    0    reservacion_reservacion_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.reservacion_reservacion_id_seq OWNED BY public.reservacion.reservacion_id;
          public          ferkhan    false    229            �            1259    16612    sala    TABLE     �   CREATE TABLE public.sala (
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
       public          postgres    false    217            w           0    0    sala_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.sala_id_seq OWNED BY public.sala.sala_id;
          public          postgres    false    218            �           2604    16624    asiento_reservado asiento_id    DEFAULT     z   ALTER TABLE ONLY public.asiento_reservado ALTER COLUMN asiento_id SET DEFAULT nextval('public.asiento_id_seq'::regclass);
 K   ALTER TABLE public.asiento_reservado ALTER COLUMN asiento_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    24685    clasificacion clasificacion_id    DEFAULT     �   ALTER TABLE ONLY public.clasificacion ALTER COLUMN clasificacion_id SET DEFAULT nextval('public.clasificacion_clasificacion_id_seq'::regclass);
 M   ALTER TABLE public.clasificacion ALTER COLUMN clasificacion_id DROP DEFAULT;
       public          ferkhan    false    221    222    222            �           2604    24764    factura factura_id    DEFAULT     x   ALTER TABLE ONLY public.factura ALTER COLUMN factura_id SET DEFAULT nextval('public.factura_factura_id_seq'::regclass);
 A   ALTER TABLE public.factura ALTER COLUMN factura_id DROP DEFAULT;
       public          ferkhan    false    232    231    232            �           2604    24726    funcion funcion_id    DEFAULT     x   ALTER TABLE ONLY public.funcion ALTER COLUMN funcion_id SET DEFAULT nextval('public.funcion_funcion_id_seq'::regclass);
 A   ALTER TABLE public.funcion ALTER COLUMN funcion_id DROP DEFAULT;
       public          ferkhan    false    228    227    228            �           2604    24695    genero genero_id    DEFAULT     t   ALTER TABLE ONLY public.genero ALTER COLUMN genero_id SET DEFAULT nextval('public.genero_genero_id_seq'::regclass);
 ?   ALTER TABLE public.genero ALTER COLUMN genero_id DROP DEFAULT;
       public          ferkhan    false    224    223    224            �           2604    24705    pelicula pelicula_id    DEFAULT     |   ALTER TABLE ONLY public.pelicula ALTER COLUMN pelicula_id SET DEFAULT nextval('public.pelicula_pelicula_id_seq'::regclass);
 C   ALTER TABLE public.pelicula ALTER COLUMN pelicula_id DROP DEFAULT;
       public          ferkhan    false    226    225    226            �           2604    24745    reservacion reservacion_id    DEFAULT     �   ALTER TABLE ONLY public.reservacion ALTER COLUMN reservacion_id SET DEFAULT nextval('public.reservacion_reservacion_id_seq'::regclass);
 I   ALTER TABLE public.reservacion ALTER COLUMN reservacion_id DROP DEFAULT;
       public          ferkhan    false    230    229    230            �           2604    16632    sala sala_id    DEFAULT     g   ALTER TABLE ONLY public.sala ALTER COLUMN sala_id SET DEFAULT nextval('public.sala_id_seq'::regclass);
 ;   ALTER TABLE public.sala ALTER COLUMN sala_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16719    usuario usuario_id    DEFAULT     z   ALTER TABLE ONLY public.usuario ALTER COLUMN usuario_id SET DEFAULT nextval('public."USUARIO_usuario_id_seq"'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN usuario_id DROP DEFAULT;
       public          ferkhan    false    220    219    220            W          0    16565    asiento_reservado 
   TABLE DATA           �   COPY public.asiento_reservado (asiento_id, sala_id, fila_letra, columna_num, estado_reservado, estado_registro, funcion_id) FROM stdin;
    public          postgres    false    215   ^_       ^          0    24682    clasificacion 
   TABLE DATA           R   COPY public.clasificacion (clasificacion_id, nombre, estado_registro) FROM stdin;
    public          ferkhan    false    222   �_       h          0    24761    factura 
   TABLE DATA           s   COPY public.factura (factura_id, reservacion_id, precio_total, fecha_pago, codigo_qr, estado_registro) FROM stdin;
    public          ferkhan    false    232   �_       d          0    24723    funcion 
   TABLE DATA           �   COPY public.funcion (funcion_id, pelicula_id, sala_id, fecha_funcion, hora_inicio, precio_entrada, estado_registro) FROM stdin;
    public          ferkhan    false    228   �_       `          0    24692    genero 
   TABLE DATA           D   COPY public.genero (genero_id, nombre, estado_registro) FROM stdin;
    public          ferkhan    false    224   �a       b          0    24702    pelicula 
   TABLE DATA           �   COPY public.pelicula (pelicula_id, clasificacion_id, genero_id, titulo, director, sinopsis, duracion_min, fecha_estreno, portada_imagen, trailer_url, estado_cartelera, estado_registro) FROM stdin;
    public          ferkhan    false    226   Yb       f          0    24742    reservacion 
   TABLE DATA           }   COPY public.reservacion (reservacion_id, usuario_id, horario_id, asiento_id, fecha_reservacion, estado_registro) FROM stdin;
    public          ferkhan    false    230   �n       Y          0    16612    sala 
   TABLE DATA           K   COPY public.sala (sala_id, nombre, capacidad, estado_registro) FROM stdin;
    public          postgres    false    217   �n       \          0    16716    usuario 
   TABLE DATA           i   COPY public.usuario (usuario_id, nombre_completo, correo, clave, direccion, estado_registro) FROM stdin;
    public          ferkhan    false    220   ao       x           0    0    USUARIO_usuario_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."USUARIO_usuario_id_seq"', 11, true);
          public          ferkhan    false    219            y           0    0    asiento_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.asiento_id_seq', 1, true);
          public          postgres    false    216            z           0    0 "   clasificacion_clasificacion_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.clasificacion_clasificacion_id_seq', 4, true);
          public          ferkhan    false    221            {           0    0    factura_factura_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.factura_factura_id_seq', 1, false);
          public          ferkhan    false    231            |           0    0    funcion_funcion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.funcion_funcion_id_seq', 84, true);
          public          ferkhan    false    227            }           0    0    genero_genero_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.genero_genero_id_seq', 14, true);
          public          ferkhan    false    223            ~           0    0    pelicula_pelicula_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pelicula_pelicula_id_seq', 28, true);
          public          ferkhan    false    225                       0    0    reservacion_reservacion_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.reservacion_reservacion_id_seq', 1, false);
          public          ferkhan    false    229            �           0    0    sala_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sala_id_seq', 1, false);
          public          postgres    false    218            �           2606    16724    usuario USUARIO_pkey 
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
       public            ferkhan    false    222            �           2606    24769    factura factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (factura_id);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            ferkhan    false    232            �           2606    24729    funcion funcion_pkey1 
   CONSTRAINT     [   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pkey1 PRIMARY KEY (funcion_id);
 ?   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pkey1;
       public            ferkhan    false    228            �           2606    24700    genero genero_pkey1 
   CONSTRAINT     X   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey1 PRIMARY KEY (genero_id);
 =   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey1;
       public            ferkhan    false    224            �           2606    24711    pelicula pelicula_pkey1 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey1 PRIMARY KEY (pelicula_id);
 A   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey1;
       public            ferkhan    false    226            �           2606    24748    reservacion reservacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_pkey PRIMARY KEY (reservacion_id);
 F   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_pkey;
       public            ferkhan    false    230            �           2606    16653    sala sala_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (sala_id);
 8   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
       public            postgres    false    217            �           2606    24781 8   asiento_reservado asiento_reservado_fecha_reservado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_reservado_fecha_reservado_fkey FOREIGN KEY (funcion_id) REFERENCES public.funcion(funcion_id) NOT VALID;
 b   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_reservado_fecha_reservado_fkey;
       public          postgres    false    215    228    3257            �           2606    16656 #   asiento_reservado asiento_sala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asiento_reservado
    ADD CONSTRAINT asiento_sala_fkey FOREIGN KEY (sala_id) REFERENCES public.sala(sala_id);
 M   ALTER TABLE ONLY public.asiento_reservado DROP CONSTRAINT asiento_sala_fkey;
       public          postgres    false    215    217    3247            �           2606    24770 #   factura factura_reservacion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_reservacion_id_fkey FOREIGN KEY (reservacion_id) REFERENCES public.reservacion(reservacion_id);
 M   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_reservacion_id_fkey;
       public          ferkhan    false    230    232    3259            �           2606    24730     funcion funcion_pelicula_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pelicula_id_fkey FOREIGN KEY (pelicula_id) REFERENCES public.pelicula(pelicula_id);
 J   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pelicula_id_fkey;
       public          ferkhan    false    226    228    3255            �           2606    24735    funcion funcion_sala_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_sala_id_fkey FOREIGN KEY (sala_id) REFERENCES public.sala(sala_id);
 F   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_sala_id_fkey;
       public          ferkhan    false    217    3247    228            �           2606    24712 '   pelicula pelicula_clasificacion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_clasificacion_id_fkey FOREIGN KEY (clasificacion_id) REFERENCES public.clasificacion(clasificacion_id) NOT VALID;
 Q   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_clasificacion_id_fkey;
       public          ferkhan    false    226    3251    222            �           2606    24717     pelicula pelicula_genero_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_genero_id_fkey FOREIGN KEY (genero_id) REFERENCES public.genero(genero_id) NOT VALID;
 J   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_genero_id_fkey;
       public          ferkhan    false    226    224    3253            �           2606    24786 '   reservacion reservacion_asiento_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_asiento_id_fkey FOREIGN KEY (asiento_id) REFERENCES public.asiento_reservado(asiento_id) NOT VALID;
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_asiento_id_fkey;
       public          ferkhan    false    230    3245    215            �           2606    24754 '   reservacion reservacion_horario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_horario_id_fkey FOREIGN KEY (horario_id) REFERENCES public.funcion(funcion_id);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_horario_id_fkey;
       public          ferkhan    false    3257    230    228            �           2606    24749 '   reservacion reservacion_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_usuario_id_fkey;
       public          ferkhan    false    3249    230    220            W      x�3�4�t�44�,BC�=... !      ^   #   x�3��,�2�p�54���, e�	"c���� n�      h      x������ � �      d   �  x���Qn�0E�oj/1ș��Z��t�(�mu_��F>���@�[�}��G�����Z׫�k��q��=�W�/�
!z�u��
��u�)��
�����X��0Y���fi�I�����W�=yr�{��I�Jb�Z�1�����Z��ʚ�?w�{rke>'V�b�Vx�`1+�e��K(Ҁ�����e��BĆ42���Z���=�'oZ��V`⎊�x��*޵O����3k�\��=��˭�D�
\���.a��K�V�!��~��p�ܓ<���
]�V�r��.��YQ�޴�nR�K_��¥Ǟ�ɥw����V��*߸LT�q����R�K����r?��_�ti %C0��l(I泡"9�A�Ɇx��� ���Qd4��d�V`2E��������
]�zf�󠌹'g�[+p�U+p�u����L�
\fH�._��~���      `   �   x�M�;�0D��)r�I��VP$
��Y���^#��VT!����L�f4kyx$5��;:3f�`ЍTÑB�!��ޡXʼ��t(�/9,`�1Q`_6���%��(�C�$��vF��gRO��HR�)���J����!&��E�ߗ��?���S��R�	I�B      b   b  x��XMo�H=3��@���eI,�d�ߑ-�q��٢�j��nR}۟2�rXdOs\��}�MI��`�H`�EV�z���A;�7�Υ�ؙ̒�Z'°�R���6c�z%2���~*��X��Lg��2Zp�kÌ���l��	"�j��X,l^��Y0�YZ
S���<6�]��a���h�7Z{�����(r����OOO�*]�L��ߋt&�������pi���?���b���[M��i|�yP�7a@�n�-^�h�f��C��g��!P��5�1rfz�
BDۂ�2����R��0Ip�7_J �t��IK�qv�3a�arq�/�8����4@�:�0�H(��y`
7y��Y����Li�2�,�� ;��Da��C��z5=���j�$��<��i:<1�,�qi�� �x�Mp�S<u��Fg����]�1�Օ�p�Y:%w.�L>hi�x&
�AI���'"�3��\d@�*�� 	��o�&�>�j�� T*x����c��
u]5������"iّ61�<׊SԖ'uĜ�y*��w|�cD�\�P�A��fd�E�����6pE��c�xBaX�PF�ݽ�A�0 �@^,x�F"M�0  GxŎN�{�� b%-����[a�(
�
#���&��DF\��@k�&��M��{����#n��,�ɢ��g�|�Z\�,8�E��E67�O�e�o ��o���z)���}篿���	 ��*u`�5H�PB�����ǈ���b�{2����������Ȝ�����h9V_O���o�]�@L~�G-��]JVAܔ�vgH�<BB�NQ93��H"-3���.��Y���i�x$I##��K�>�(��	� ��B�%�ro�S��D�v��=uA�"��bzsx5�P���4_���Ƈ+=��s��	��^p�+6-��@�E�ι���:bA�6��
p��LJ���H��Il%�OTr�=���^�4��B�4��ڦP��n[�R��@XٸLsL�e�>�TDK��B��6�e����ٱQDE�q� ���R�ނdy��_��b9�l����e�����JKb����Ea�Z���BPIM}
Nf���V J0Ph���"ZD:Z�n��G�J���Ԑ+�X�=K52���o�42�@Փ���)�Y!L�
Im��-tS��f��7�fo����T9;�Q�i\��Tf�ZA�����n*o��_T#J��8$@�p�(������3�ר�[���(T0�r:dY�)	�{�)�s����%�M�Ξ�6l�Fm�o4eI���d��Kv-b��.�%��a:#���
="�4
Y6׆�ʍU��Y���
Uta�jO��1�$5,g8��=��N��E�1���]���K�l���^���~���g{n�~��stջ?Y���4�|T�q��_��P��k��Q6�P�b�R(Oc^����F�ݎ4�zNP���x�����S5Ww���t��*d��� �t����\Qi-�0��JSM�z�B7�����^��2�_4���;^M����྽��4?;o9o9�x%Cl	Aq|����Rh�.%Dfk����e_�Cl�>!R�j3�=�u/[ܔ p����KP�a*�� ��3���I�2�wEF���,���l�^��F������Z�W�?�iL�E���PhC��F�~��)��6�{"�>�~����k�N�arZu7N���-�H'��Ԗ��@?֎	ϊ��"��[ͷt����Y)V����r�nȬ^�����s_8i�jc��c��K1ی����!Y�+A���9%�����ͯ�Ǫ�o�&O��iC�12WG��7aög���G�v�K���k��O��\c�z����)A������t^.����+j��-�ਊ��7��U�?�jE�8Is�l�A���A�а�b�u���^� ��,^�dIT�# a�_�g��9��\��x9]��s�)m�?�F�ӂ����p7�\���&�MV������-K䳞#|O1��M|S��G��C|�%m!�^����.A�r��)c���r�ykCv�[���I��=�z��Pj�����Giq@�s��VH.�w)���UwGjg����"*L�ڲ���p7�n��b-�Hڜ�n���J���,$J$b������\�3�xj­�T3�~�V���?b�rN������H�N0�M��nU�E���ߓ!��m������������W���x8��^��`?�������+Ix�~��{y�d!_
���x
*��,��綵��&N֦!�Sn���9�\�I׷D!-����w�Y�/D�]5C��D�f�y�di�P��
$����c��y�y�|�����S#|�T}�D�8��
"M�G��g"E��$��\�mK�*Sx���<�i�O��y��N?o��Y�I#�D�waƠx���3�u��2f��oW?���[�	T�"yX�e�tyvp��I`��	(*�}�T��o���������T/�mb������� �A#W�hN7�c��'��7O� r�9�2޾�p�^���[�1���΂��(�!��xw�
�aZ�Τ�j�c�̃B��gu٪�Su{e�O�{�m_�� ���t���NÅ�c��K`u�7����Yb���X�C��·[ʩ�=P{P'�5�N$��#�!�`��=7"������w�'�y����'��ݳe*3\���°��т��5!r�^�X�����b6��Wn��V{|\\�N��f��V��uB��62��䖦{�k?�r��ߚ���Y:�1A���Y���@�m�����/�Ho��H;ܣnj�܎|�k��Ng騿�Q�j΋On�'Ǎ�p_����Š����N'p�� +:��ui�~�N���m�w��Nޭ#� `0���6N��t&�x��q���E�w���,%��(�^����e���O*���f�91��?V��k����W��O��{#(!����b��r%v���F^'�TlP��L�^��9#�����R�#e�vp���;S#7*���Z��0޼Q@k��up���L�u!��`XN?D��.ǚ`d�:�?)=<��ܐ�_߽y��~�-�      f      x������ � �      Y   i   x�-�9� D��>EN�l@��i��P����Ce���B�.o�V����(�Fh'�xP6��I"��Z(��B��<T9��B���S��t�6��th��빧g���'z      \   �   x�u��N�0@ϓ��T^⤹���P	�8p/P��#����Ϣ��sػ>b,��t�׹ڼ���P�jp!aוw-Z�T��t��ɹ@��bs��-�Z�x�r�Q٬`۹kyO�����&����l؛L�|���p1���x�/��?)���m-Ш�5*��fW�
Y�-FpxƋw=\��wͭi���d�5�1Y[mגKg�R�4�4}�˪(�O�v     