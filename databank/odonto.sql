PGDMP  $    :                }            odonto    16.3    16.3 9    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    92445    odonto    DATABASE     }   CREATE DATABASE odonto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE odonto;
                postgres    false            �            1259    92485    consulta    TABLE     �   CREATE TABLE public.consulta (
    id integer NOT NULL,
    id_paciente integer NOT NULL,
    id_dentista integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    descricao text NOT NULL,
    prescricao character varying(255)
);
    DROP TABLE public.consulta;
       public         heap    postgres    false            �            1259    92484    consulta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.consulta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.consulta_id_seq;
       public          postgres    false    220            /           0    0    consulta_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.consulta_id_seq OWNED BY public.consulta.id;
          public          postgres    false    219            �            1259    92474    dentista    TABLE     �   CREATE TABLE public.dentista (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    cpf character varying(11) NOT NULL,
    cro character varying(20) NOT NULL,
    especialidade character varying(50) NOT NULL
);
    DROP TABLE public.dentista;
       public         heap    postgres    false            �            1259    92473    dentista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dentista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.dentista_id_seq;
       public          postgres    false    218            0           0    0    dentista_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.dentista_id_seq OWNED BY public.dentista.id;
          public          postgres    false    217            �            1259    92530    horario_atendimento    TABLE     �   CREATE TABLE public.horario_atendimento (
    id integer NOT NULL,
    id_dentista integer NOT NULL,
    id_consulta integer NOT NULL
);
 '   DROP TABLE public.horario_atendimento;
       public         heap    postgres    false            �            1259    92529    horario_atendimento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.horario_atendimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.horario_atendimento_id_seq;
       public          postgres    false    226            1           0    0    horario_atendimento_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.horario_atendimento_id_seq OWNED BY public.horario_atendimento.id;
          public          postgres    false    225            �            1259    92447    paciente    TABLE     0  CREATE TABLE public.paciente (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    cpf character varying(11) NOT NULL,
    nascimento date NOT NULL,
    telefone character varying(20) NOT NULL,
    email character varying(128) NOT NULL,
    endereco character varying(255) NOT NULL
);
    DROP TABLE public.paciente;
       public         heap    postgres    false            �            1259    92504    procedimento    TABLE     �   CREATE TABLE public.procedimento (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    descricao text NOT NULL,
    duracao time without time zone
);
     DROP TABLE public.procedimento;
       public         heap    postgres    false            �            1259    92513    procedimento_consulta    TABLE     �   CREATE TABLE public.procedimento_consulta (
    id integer NOT NULL,
    id_consulta integer NOT NULL,
    id_procedimento integer NOT NULL
);
 )   DROP TABLE public.procedimento_consulta;
       public         heap    postgres    false            �            1259    92546    lista_consultas_ordenadas    VIEW     ^  CREATE VIEW public.lista_consultas_ordenadas AS
 SELECT c.id AS id_consulta,
    p.nome AS nome_paciente,
    d.nome AS nome_dentista,
    c.datahora AS data_consulta,
    string_agg((pr.nome)::text, ', '::text) AS procedimentos_realizados
   FROM ((((public.consulta c
     JOIN public.paciente p ON ((c.id_paciente = p.id)))
     JOIN public.dentista d ON ((c.id_dentista = d.id)))
     LEFT JOIN public.procedimento_consulta pc ON ((c.id = pc.id_consulta)))
     LEFT JOIN public.procedimento pr ON ((pc.id_procedimento = pr.id)))
  GROUP BY c.id, p.nome, d.nome, c.datahora
  ORDER BY c.datahora DESC;
 ,   DROP VIEW public.lista_consultas_ordenadas;
       public          postgres    false    218    220    220    220    224    224    222    216    216    218    222    220            �            1259    92446    paciente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.paciente_id_seq;
       public          postgres    false    216            2           0    0    paciente_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.paciente_id_seq OWNED BY public.paciente.id;
          public          postgres    false    215            �            1259    92512    procedimento_consulta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.procedimento_consulta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.procedimento_consulta_id_seq;
       public          postgres    false    224            3           0    0    procedimento_consulta_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.procedimento_consulta_id_seq OWNED BY public.procedimento_consulta.id;
          public          postgres    false    223            �            1259    92503    procedimento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.procedimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.procedimento_id_seq;
       public          postgres    false    222            4           0    0    procedimento_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.procedimento_id_seq OWNED BY public.procedimento.id;
          public          postgres    false    221            o           2604    92488    consulta id    DEFAULT     j   ALTER TABLE ONLY public.consulta ALTER COLUMN id SET DEFAULT nextval('public.consulta_id_seq'::regclass);
 :   ALTER TABLE public.consulta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            n           2604    92477    dentista id    DEFAULT     j   ALTER TABLE ONLY public.dentista ALTER COLUMN id SET DEFAULT nextval('public.dentista_id_seq'::regclass);
 :   ALTER TABLE public.dentista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            r           2604    92533    horario_atendimento id    DEFAULT     �   ALTER TABLE ONLY public.horario_atendimento ALTER COLUMN id SET DEFAULT nextval('public.horario_atendimento_id_seq'::regclass);
 E   ALTER TABLE public.horario_atendimento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            m           2604    92450    paciente id    DEFAULT     j   ALTER TABLE ONLY public.paciente ALTER COLUMN id SET DEFAULT nextval('public.paciente_id_seq'::regclass);
 :   ALTER TABLE public.paciente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            p           2604    92507    procedimento id    DEFAULT     r   ALTER TABLE ONLY public.procedimento ALTER COLUMN id SET DEFAULT nextval('public.procedimento_id_seq'::regclass);
 >   ALTER TABLE public.procedimento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            q           2604    92516    procedimento_consulta id    DEFAULT     �   ALTER TABLE ONLY public.procedimento_consulta ALTER COLUMN id SET DEFAULT nextval('public.procedimento_consulta_id_seq'::regclass);
 G   ALTER TABLE public.procedimento_consulta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            "          0    92485    consulta 
   TABLE DATA           a   COPY public.consulta (id, id_paciente, id_dentista, datahora, descricao, prescricao) FROM stdin;
    public          postgres    false    220   eF                  0    92474    dentista 
   TABLE DATA           E   COPY public.dentista (id, nome, cpf, cro, especialidade) FROM stdin;
    public          postgres    false    218   �G       (          0    92530    horario_atendimento 
   TABLE DATA           K   COPY public.horario_atendimento (id, id_dentista, id_consulta) FROM stdin;
    public          postgres    false    226   RI                 0    92447    paciente 
   TABLE DATA           X   COPY public.paciente (id, nome, cpf, nascimento, telefone, email, endereco) FROM stdin;
    public          postgres    false    216   �I       $          0    92504    procedimento 
   TABLE DATA           D   COPY public.procedimento (id, nome, descricao, duracao) FROM stdin;
    public          postgres    false    222   }K       &          0    92513    procedimento_consulta 
   TABLE DATA           Q   COPY public.procedimento_consulta (id, id_consulta, id_procedimento) FROM stdin;
    public          postgres    false    224   �L       5           0    0    consulta_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.consulta_id_seq', 11, true);
          public          postgres    false    219            6           0    0    dentista_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.dentista_id_seq', 10, true);
          public          postgres    false    217            7           0    0    horario_atendimento_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.horario_atendimento_id_seq', 10, true);
          public          postgres    false    225            8           0    0    paciente_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.paciente_id_seq', 10, true);
          public          postgres    false    215            9           0    0    procedimento_consulta_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.procedimento_consulta_id_seq', 10, true);
          public          postgres    false    223            :           0    0    procedimento_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.procedimento_id_seq', 10, true);
          public          postgres    false    221            �           2606    92492    consulta consulta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.consulta DROP CONSTRAINT consulta_pkey;
       public            postgres    false    220            z           2606    92481    dentista dentista_cpf_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.dentista
    ADD CONSTRAINT dentista_cpf_key UNIQUE (cpf);
 C   ALTER TABLE ONLY public.dentista DROP CONSTRAINT dentista_cpf_key;
       public            postgres    false    218            |           2606    92483    dentista dentista_cro_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.dentista
    ADD CONSTRAINT dentista_cro_key UNIQUE (cro);
 C   ALTER TABLE ONLY public.dentista DROP CONSTRAINT dentista_cro_key;
       public            postgres    false    218            ~           2606    92479    dentista dentista_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.dentista
    ADD CONSTRAINT dentista_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.dentista DROP CONSTRAINT dentista_pkey;
       public            postgres    false    218            �           2606    92535 ,   horario_atendimento horario_atendimento_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.horario_atendimento
    ADD CONSTRAINT horario_atendimento_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.horario_atendimento DROP CONSTRAINT horario_atendimento_pkey;
       public            postgres    false    226            t           2606    92456    paciente paciente_cpf_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_cpf_key UNIQUE (cpf);
 C   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_cpf_key;
       public            postgres    false    216            v           2606    92458    paciente paciente_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_email_key;
       public            postgres    false    216            x           2606    92454    paciente paciente_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_pkey;
       public            postgres    false    216            �           2606    92518 0   procedimento_consulta procedimento_consulta_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.procedimento_consulta
    ADD CONSTRAINT procedimento_consulta_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.procedimento_consulta DROP CONSTRAINT procedimento_consulta_pkey;
       public            postgres    false    224            �           2606    92511    procedimento procedimento_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.procedimento
    ADD CONSTRAINT procedimento_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.procedimento DROP CONSTRAINT procedimento_pkey;
       public            postgres    false    222            �           2606    92498 "   consulta consulta_id_dentista_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_id_dentista_fkey FOREIGN KEY (id_dentista) REFERENCES public.dentista(id);
 L   ALTER TABLE ONLY public.consulta DROP CONSTRAINT consulta_id_dentista_fkey;
       public          postgres    false    220    4734    218            �           2606    92493 "   consulta consulta_id_paciente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.paciente(id);
 L   ALTER TABLE ONLY public.consulta DROP CONSTRAINT consulta_id_paciente_fkey;
       public          postgres    false    216    220    4728            �           2606    92536 8   horario_atendimento horario_atendimento_id_consulta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.horario_atendimento
    ADD CONSTRAINT horario_atendimento_id_consulta_fkey FOREIGN KEY (id_consulta) REFERENCES public.consulta(id);
 b   ALTER TABLE ONLY public.horario_atendimento DROP CONSTRAINT horario_atendimento_id_consulta_fkey;
       public          postgres    false    226    4736    220            �           2606    92541 8   horario_atendimento horario_atendimento_id_dentista_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.horario_atendimento
    ADD CONSTRAINT horario_atendimento_id_dentista_fkey FOREIGN KEY (id_dentista) REFERENCES public.dentista(id);
 b   ALTER TABLE ONLY public.horario_atendimento DROP CONSTRAINT horario_atendimento_id_dentista_fkey;
       public          postgres    false    4734    218    226            �           2606    92519 <   procedimento_consulta procedimento_consulta_id_consulta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedimento_consulta
    ADD CONSTRAINT procedimento_consulta_id_consulta_fkey FOREIGN KEY (id_consulta) REFERENCES public.consulta(id);
 f   ALTER TABLE ONLY public.procedimento_consulta DROP CONSTRAINT procedimento_consulta_id_consulta_fkey;
       public          postgres    false    224    220    4736            �           2606    92524 @   procedimento_consulta procedimento_consulta_id_procedimento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedimento_consulta
    ADD CONSTRAINT procedimento_consulta_id_procedimento_fkey FOREIGN KEY (id_procedimento) REFERENCES public.procedimento(id);
 j   ALTER TABLE ONLY public.procedimento_consulta DROP CONSTRAINT procedimento_consulta_id_procedimento_fkey;
       public          postgres    false    222    4738    224            "     x�}�Kn�0@��s*;l+��.�.ٌ�@����ަ����X�IHԪ���@�oƉHD*�dSYLeJ.S��R��X*4��g,�!�:�H�&)��ȧ�2�#�D�7�J�-�	;�>P|����U��8fPe�f���a��٠�
���V���u@��H�l]9G�FWJ���98l�����|��o�c��@�>�ylzøg���3����i��\�k`���Oo9��	L�~�ac�?V��p~�Q����Ҟ�3��1���K O��g66�cj��?b����=c]�Q���DNX��-J��s)	*��e���٠M�:�"^�C���;2%�ST�����S&�������d2�V��          N  x�M�KN�0����� U�N��R�[6��K�]&N��f�z1촶8�7��v
+��Gs�6��,B�fY�EYV��۫M��,/Jh�n���d��-q/��Q�����<��V�����7�Z���n�󬆇�A�����\Ҩ9��񧍶Y�q� h9e�F���ۘ�!��<P/�zf�K��xu.?���m�:"D9O����4қD������H;���{+$�4��6�����3Xw?Is��f+�"[�;� fy�^f�#�FWNS������( ��л::�Z16ſ������k�g��{�8����?���1^gI����(      (   7   x���� ���v�}�����!1=�0)�bP6I;�'����b�<�����~{         �  x�]�Mn�0���Sp����wq��m� �d�c+�I(ˋ^�G��:C���O�?��Ѱ��8��m�$��TtY��2�)�h�M�"�`;+{n��֍<����H�C�8���ċ�1���q�x��S��,0d(���"�p�l��|����ó�5��x�[�#�U�ZM�ShGF6Ĭ�H�#G��lwrb�\��,I�J��Dױ8İ��DI���sG�)���84����g�`֤ܦ@�c|m�!�5?GJ���G�(��d�w�?;q����ْq��A]L1��GH��,���������+�l�&�:9m��:��bL~\���݀J���.^*_��¬)��~�:�<bX�aH~����3�J�^mW��{w�ma��܆�9FSN1z!�ZY~E"S�{�c�?�ӭ�a�뮇٣��F��&��FL�#�R=�Y�|�z����?/�a      $   J  x�]QKN�0];��@�OwUaQ		T�`�fp�2������� ��㐴����{�>�;t�y�6��W�$Y�{�HYY� _@G<��5W��%߭x�[��o<��I�Q���C�j���hf��9���2�e�T,-�+0�[K��P���T+4+Ǯy�X�%}���}hoܱ.Ģ�����}�T�oQ��Ѓ6x������>ߟ�Q�q2�k���+���'>J�m��*�҇C�"�-���zg#ȕG���b;�������qI%qK65���k#%Bj�����}��g����!$��K���S���EQ� 
ξ      &   9   x����  ���0� �.�������L���1I����p/��(b�4e���� �u     