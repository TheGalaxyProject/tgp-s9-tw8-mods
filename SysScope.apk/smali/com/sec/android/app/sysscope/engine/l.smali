.class public Lcom/sec/android/app/sysscope/engine/l;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/sec/android/app/sysscope/engine/l;


# instance fields
.field private a:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sec/android/app/sysscope/engine/l;
    .registers 1

    sget-object v0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/l;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sec/android/app/sysscope/engine/l;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/engine/l;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/l;

    :cond_b
    sget-object v0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/l;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    return-void
.end method

.method public b()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    return-object v0
.end method
