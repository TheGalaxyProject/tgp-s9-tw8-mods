.class public Lcom/sec/android/app/sysscope/job/RootProcessScanner;
.super Lcom/sec/android/app/sysscope/engine/m;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "debuggerd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "init"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "installd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "servicemanager"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vold"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "zygote"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "netd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ueventd"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dock_kbd_attach"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pppd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pppd_runner"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mpdecision"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "thermald"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hdmid"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sec_keyboard"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a([Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/m;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_1b

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_18

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)Z
    .registers 4

    invoke-static {p1}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->checkIsApprivedProcess(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private static b(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "\\d+"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static c(Ljava/io/File;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "status"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is missing (man 5 proc)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6f

    array-length v0, v2

    if-lez v0, :cond_6f

    array-length v3, v2

    const/4 v0, 0x0

    :goto_36
    if-ge v0, v3, :cond_6f

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "config.gz"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    :cond_46
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_49
    invoke-direct {p0, v4}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_46

    const-string v5, "SysScopeRootScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUnapprovedRootProcess returns true: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_6f
    return-object v1
.end method

.method private static d(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    :try_start_9
    const-string v0, "Name:"

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_17

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    return-object v0

    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/g;
    .registers 10

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->c()Ljava/util/List;
    :try_end_7
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_4 .. :try_end_7} :catch_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_7} :catch_47

    move-result-object v4

    :try_start_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_46

    sget-object v1, Lcom/sec/android/app/sysscope/service/g;->d:Lcom/sec/android/app/sysscope/service/g;
    :try_end_10
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_8 .. :try_end_10} :catch_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_10} :catch_a7

    :try_start_10
    const-string v0, ""
    :try_end_12
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_10 .. :try_end_12} :catch_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_12} :catch_ac

    move v3, v2

    move-object v5, v0

    move v0, v2

    :goto_15
    :try_start_15
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_18
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_15 .. :try_end_18} :catch_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_b1

    move-result v6

    if-ge v3, v6, :cond_42

    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3b
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_1b .. :try_end_3b} :catch_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_3b} :catch_b5

    move-result-object v5

    add-int/lit8 v0, v3, 0x1

    move v7, v0

    move v0, v3

    move v3, v7

    goto :goto_15

    :cond_42
    :try_start_42
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a(Ljava/lang/String;)V
    :try_end_45
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_42 .. :try_end_45} :catch_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_45} :catch_b1

    move-object v0, v1

    :cond_46
    :goto_46
    return-object v0

    :catch_47
    move-exception v3

    move-object v3, v0

    move v0, v2

    :goto_4a
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const-string v0, "NOSTATUS\n\tPidFiles : "

    move v1, v2

    :goto_57
    array-length v2, v4

    if-ge v1, v2, :cond_a2

    aget-object v2, v4, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_80

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7d
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_80
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_7d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(DIR) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7d

    :cond_a2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_46

    :catch_a7
    move-exception v1

    move-object v1, v4

    move-object v3, v0

    move v0, v2

    goto :goto_4a

    :catch_ac
    move-exception v0

    move v0, v2

    move-object v3, v1

    move-object v1, v4

    goto :goto_4a

    :catch_b1
    move-exception v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_4a

    :catch_b5
    move-exception v0

    move v0, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_4a

    :catch_ba
    move-exception v1

    goto :goto_46

    :catch_bc
    move-exception v0

    move-object v0, v1

    goto :goto_46
.end method

.method public native checkIsApprivedProcess(Ljava/lang/String;)I
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "Unauthorized root process scanner"

    return-object v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
