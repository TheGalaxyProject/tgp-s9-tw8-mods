.class Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;
.super Ljava/lang/ClassLoader;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassLoaderFilter"
.end annotation


# instance fields
.field private final mBase:Ljava/lang/ClassLoader;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;->mBase:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;->mPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;->mBase:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
