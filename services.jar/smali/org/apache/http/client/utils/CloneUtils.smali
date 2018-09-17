.class public Lorg/apache/http/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/http/client/utils/CloneUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static cloneObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p0, :cond_d

    instance-of v7, p0, Ljava/lang/Cloneable;

    if-nez v7, :cond_e

    new-instance v7, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v7}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v7

    :cond_d
    return-object v7

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_13
    check-cast v7, [Ljava/lang/Class;

    const-string/jumbo v8, "clone"

    invoke-virtual {v1, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1b} :catch_24

    move-result-object v5

    const/4 v7, 0x0

    :try_start_1d
    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_22} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_22} :catch_44

    move-result-object v6

    return-object v6

    :catch_24
    move-exception v3

    new-instance v7, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_2f
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v7, v0, Ljava/lang/CloneNotSupportedException;

    if-nez v7, :cond_41

    new-instance v7, Ljava/lang/Error;

    const-string/jumbo v8, "Unexpected exception"

    invoke-direct {v7, v8, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_41
    check-cast v0, Ljava/lang/CloneNotSupportedException;

    throw v0

    :catch_44
    move-exception v2

    new-instance v7, Ljava/lang/IllegalAccessError;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7
.end method
