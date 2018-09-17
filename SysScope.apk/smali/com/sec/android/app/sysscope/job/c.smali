.class public Lcom/sec/android/app/sysscope/job/c;
.super Ljava/lang/Object;


# static fields
.field private static final I:Ljava/util/Comparator;

.field private static final a:[I

.field private static final d:[I

.field private static final g:[I


# instance fields
.field private A:[I

.field private B:[I

.field private final C:Ljava/util/ArrayList;

.field private final D:Ljava/util/ArrayList;

.field private final E:Ljava/util/HashMap;

.field private F:Z

.field private G:Z

.field private H:[B

.field private final b:[J

.field private final c:[J

.field private final e:[Ljava/lang/String;

.field private final f:[J

.field private final h:[J

.field private final i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0xf

    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->d:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->g:[I

    new-instance v0, Lcom/sec/android/app/sysscope/job/d;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/d;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->I:Ljava/util/Comparator;

    return-void

    nop

    :array_22
    .array-data 4
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_44
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
    .end array-data

    :array_66
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->b:[J

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->c:[J

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->e:[Ljava/lang/String;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->f:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->h:[J

    iput v1, p0, Lcom/sec/android/app/sysscope/job/c;->j:F

    iput v1, p0, Lcom/sec/android/app/sysscope/job/c;->k:F

    iput v1, p0, Lcom/sec/android/app/sysscope/job/c;->l:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->C:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->E:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    iput-boolean p1, p0, Lcom/sec/android/app/sysscope/job/c;->i:Z

    return-void
.end method

.method private a(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_29
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_33

    :try_start_7
    iget-object v3, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-lez v4, :cond_31

    move v3, v0

    :goto_13
    if-ge v3, v4, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    aget-byte v0, v0, v3

    if-ne v0, p2, :cond_25

    :cond_1b
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6, v3}, Ljava/lang/String;-><init>([BIII)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_24} :catch_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_24} :catch_44

    :goto_24
    return-object v0

    :cond_25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    :catch_29
    move-exception v0

    const-string v2, "ProcessStats"

    const-string v3, "readFile() FileNotFoundException "

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/sysscope/engine/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    move-object v0, v1

    goto :goto_24

    :catch_33
    move-exception v0

    move-object v2, v1

    :goto_35
    const-string v3, "ProcessStats"

    const-string v4, "readFile() IOException "

    invoke-static {v3, v4, v0}, Lcom/sec/android/app/sysscope/engine/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_31

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_31

    :catch_42
    move-exception v0

    goto :goto_31

    :catch_44
    move-exception v0

    goto :goto_35
.end method

.method private a(Lcom/sec/android/app/sysscope/job/e;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p1, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_10
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_34

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_34
    :goto_34
    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    if-eqz v1, :cond_40

    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_40
    iput-object v0, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sec/android/app/sysscope/job/e;->i:I

    :cond_4a
    return-void

    :cond_4b
    move-object v0, v1

    goto :goto_34
.end method

.method private a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
    .registers 33

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :try_start_4
    const-string v2, "android.os.Process"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getPids"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [I

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v4, Landroid/os/Process;

    invoke-direct {v4}, Landroid/os/Process;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p4, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_97

    move-object v14, v2

    :goto_34
    if-nez v14, :cond_b7

    const/4 v2, 0x0

    move v9, v2

    :goto_38
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v3, 0x0

    :try_start_3d
    const-string v2, "android.os.Process"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "readProcFile"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, [J

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, [F

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-instance v16, Landroid/os/Process;

    invoke-direct/range {v16 .. v16}, Landroid/os/Process;-><init>()V

    const/4 v10, 0x0

    :goto_6b
    if-ge v10, v9, :cond_71

    aget v4, v14, v10

    if-gez v4, :cond_bb

    :cond_71
    :goto_71
    if-ge v3, v12, :cond_261

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sysscope/job/e;

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->q:I

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sec/android/app/sysscope/job/e;->t:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_94} :catch_244

    add-int/lit8 v12, v12, -0x1

    goto :goto_71

    :catch_97
    move-exception v2

    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/android/app/sysscope/engine/i;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v3

    goto/16 :goto_34

    :cond_b7
    array-length v2, v14

    move v9, v2

    goto/16 :goto_38

    :cond_bb
    if-ge v3, v12, :cond_107

    :try_start_bd
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sysscope/job/e;

    move-object v13, v2

    :goto_c6
    if-eqz v13, :cond_1aa

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->a:I

    if-ne v2, v4, :cond_1aa

    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->s:Z

    add-int/lit8 v11, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sysscope/job/c;->b:[J

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v13, Lcom/sec/android/app/sysscope/job/e;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/android/app/sysscope/job/c;->a:[I

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v2, v5

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-object v6, v2, v5

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10a

    move v2, v10

    move v3, v11

    move v4, v12

    :goto_102
    add-int/lit8 v10, v2, 0x1

    move v12, v4

    goto/16 :goto_6b

    :cond_107
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_c6

    :cond_10a
    const/4 v2, 0x0

    aget-wide v18, v3, v2

    const/4 v2, 0x1

    aget-wide v20, v3, v2

    const/4 v2, 0x2

    aget-wide v22, v3, v2

    const/4 v2, 0x3

    aget-wide v24, v3, v2

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    cmp-long v2, v22, v2

    if-nez v2, :cond_139

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_139

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    iget-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    if-eqz v2, :cond_2a9

    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    move v2, v10

    move v3, v11

    move v4, v12

    goto :goto_102

    :cond_139
    iget-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    if-nez v2, :cond_140

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    :cond_140
    if-gez p2, :cond_162

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/android/app/sysscope/job/c;->a(Lcom/sec/android/app/sysscope/job/e;Ljava/lang/String;)V

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_162

    iget-object v3, v13, Lcom/sec/android/app/sysscope/job/e;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    iget-object v7, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/sec/android/app/sysscope/job/e;->f:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    :cond_162
    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    sub-long v2, v22, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    sub-long v2, v24, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    move-wide/from16 v0, v22

    iput-wide v0, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    move-wide/from16 v0, v24

    iput-wide v0, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->n:J

    sub-long v2, v18, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    sub-long v2, v20, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/sec/android/app/sysscope/job/e;->n:J

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    int-to-long v2, v2

    iget-wide v4, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a9

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    int-to-long v2, v2

    iget-wide v4, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a9

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v10

    move v3, v11

    move v4, v12

    goto/16 :goto_102

    :cond_1aa
    if-eqz v13, :cond_1b0

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->a:I

    if-le v2, v4, :cond_28a

    :cond_1b0
    new-instance v13, Lcom/sec/android/app/sysscope/job/e;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sysscope/job/c;->i:Z

    move/from16 v0, p2

    invoke-direct {v13, v4, v0, v2}, Lcom/sec/android/app/sysscope/job/e;-><init>(IIZ)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sysscope/job/c;->e:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sysscope/job/c;->f:[J

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v13, Lcom/sec/android/app/sysscope/job/e;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/sec/android/app/sysscope/job/c;->d:[I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v2, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_233

    if-gez p2, :cond_22e

    const/4 v2, 0x0

    aget-object v2, v3, v2

    :goto_1fa
    iput-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->n:J

    :goto_20a
    if-gez p2, :cond_262

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/android/app/sysscope/job/c;->a(Lcom/sec/android/app/sysscope/job/e;Ljava/lang/String;)V

    :cond_213
    :goto_213
    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-nez p3, :cond_2a9

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v10

    move v3, v11

    move v4, v12

    goto/16 :goto_102

    :cond_22e
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1fa

    :cond_233
    const-string v2, "<unknown>"

    iput-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->n:J
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_243} :catch_244

    goto :goto_20a

    :catch_244
    move-exception v2

    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/sysscope/engine/i;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_261
    return-object v14

    :cond_262
    :try_start_262
    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    iput-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->i:I

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_213

    iget-object v3, v13, Lcom/sec/android/app/sysscope/job/e;->d:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    iget-object v7, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/sec/android/app/sysscope/job/e;->f:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    goto :goto_213

    :cond_28a
    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->t:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_2a3} :catch_244

    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v2, v10, -0x1

    goto/16 :goto_102

    :cond_2a9
    move v2, v10

    move v3, v11

    move v4, v12

    goto/16 :goto_102
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/job/c;->b()V

    return-void
.end method

.method public b()V
    .registers 16

    const/4 v14, 0x0

    iget-wide v0, p0, Lcom/sec/android/app/sysscope/job/c;->m:J

    iput-wide v0, p0, Lcom/sec/android/app/sysscope/job/c;->n:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sysscope/job/c;->m:J

    const-string v1, "/proc"

    const/4 v2, -0x1

    iget-boolean v3, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    iget-object v4, p0, Lcom/sec/android/app/sysscope/job/c;->A:[I

    iget-object v5, p0, Lcom/sec/android/app/sysscope/job/c;->C:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sysscope/job/c;->D:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->A:[I

    iput-boolean v14, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/job/e;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/job/c;->E:Ljava/util/HashMap;

    iget v3, v0, Lcom/sec/android/app/sysscope/job/e;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_42
    :try_start_42
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "readProcFile"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [I

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, [J

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, [F

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/c;->h:[J

    new-instance v2, Landroid/os/Process;

    invoke-direct {v2}, Landroid/os/Process;-><init>()V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/proc/stat"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/app/sysscope/job/c;->g:[I

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e1

    const/4 v0, 0x0

    aget-wide v2, v1, v0

    const/4 v0, 0x1

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, v1, v0

    const/4 v0, 0x3

    aget-wide v6, v1, v0

    const/4 v0, 0x4

    aget-wide v8, v1, v0

    const/4 v0, 0x5

    aget-wide v10, v1, v0

    const/4 v0, 0x6

    aget-wide v0, v1, v0

    iget-wide v12, p0, Lcom/sec/android/app/sysscope/job/c;->o:J

    sub-long v12, v2, v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/app/sysscope/job/c;->u:I

    iget-wide v12, p0, Lcom/sec/android/app/sysscope/job/c;->p:J

    sub-long v12, v4, v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/app/sysscope/job/c;->v:I

    iget-wide v12, p0, Lcom/sec/android/app/sysscope/job/c;->q:J

    sub-long v12, v8, v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/app/sysscope/job/c;->w:I

    iget-wide v12, p0, Lcom/sec/android/app/sysscope/job/c;->r:J

    sub-long v12, v10, v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/app/sysscope/job/c;->x:I

    iget-wide v12, p0, Lcom/sec/android/app/sysscope/job/c;->s:J

    sub-long v12, v0, v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/app/sysscope/job/c;->y:I

    iget-wide v12, p0, Lcom/sec/android/app/sysscope/job/c;->t:J

    sub-long v12, v6, v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/app/sysscope/job/c;->z:I

    iput-wide v2, p0, Lcom/sec/android/app/sysscope/job/c;->o:J

    iput-wide v4, p0, Lcom/sec/android/app/sysscope/job/c;->p:J

    iput-wide v8, p0, Lcom/sec/android/app/sysscope/job/c;->q:J

    iput-wide v10, p0, Lcom/sec/android/app/sysscope/job/c;->r:J

    iput-wide v0, p0, Lcom/sec/android/app/sysscope/job/c;->s:J

    iput-wide v6, p0, Lcom/sec/android/app/sysscope/job/c;->t:J
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_e1} :catch_e6

    :cond_e1
    :goto_e1
    iput-boolean v14, p0, Lcom/sec/android/app/sysscope/job/c;->F:Z

    iput-boolean v14, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    return-void

    :catch_e6
    move-exception v0

    const-string v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1
.end method
