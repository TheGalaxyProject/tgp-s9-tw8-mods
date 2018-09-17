.class public Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheKey"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    :cond_9
    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    goto :goto_b
.end method
