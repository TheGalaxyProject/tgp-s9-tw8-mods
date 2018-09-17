.class public abstract Lcom/android/server/EngineeringModeService$EMClient;
.super Ljava/lang/Object;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "EMClient"
.end annotation


# instance fields
.field private mModes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/EngineeringModeService$EMClient;->mUid:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addMode(Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getModes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkSignature(Ljava/lang/String;I)Z
    .registers 10

    const v6, 0x186a0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/EngineeringModeService;->-get0()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    if-le p2, v6, :cond_2b

    const v5, 0x186a0

    :try_start_12
    div-int v4, p2, v5

    const/16 v5, 0x40

    invoke-virtual {v2, p1, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :goto_1a
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_2a

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v5, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2a

    const/4 v3, 0x1

    :cond_2a
    :goto_2a
    return v3

    :cond_2b
    const/16 v5, 0x40

    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_30} :catch_32

    move-result-object v1

    goto :goto_1a

    :catch_32
    move-exception v0

    const-string/jumbo v5, "EngineeringModeService"

    const-string/jumbo v6, "CheckSigature Exception occured"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method protected compareModes(Ljava/lang/Integer;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getModes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected compareName(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected compareUid(I)Z
    .registers 4

    const v0, 0x186a0

    rem-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getModes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mUid:I

    return v0
.end method

.method public abstract isEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z
.end method
