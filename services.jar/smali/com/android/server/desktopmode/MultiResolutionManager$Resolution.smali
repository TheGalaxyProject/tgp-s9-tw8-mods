.class Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolution"
.end annotation


# instance fields
.field density:I

.field height:I

.field width:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid argument: val"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method constructor <init>(III)V
    .registers 6

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(III)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid argument"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v4, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v4, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    iget v4, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    if-ne v3, v4, :cond_28

    :goto_27
    return v1

    :cond_28
    move v1, v2

    goto :goto_27

    :cond_2a
    move v1, v2

    goto :goto_27
.end method

.method set(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .registers 3

    iget v0, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v0, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v0, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    return-void
.end method

.method set(I)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_19

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-get0()[[I

    move-result-object v0

    aget-object v0, v0, p1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-get0()[[I

    move-result-object v0

    aget-object v0, v0, p1

    aget v0, v0, v2

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    return v2

    :cond_19
    return v1
.end method

.method set(III)Z
    .registers 5

    const/4 v0, 0x0

    if-lez p1, :cond_f

    if-lez p2, :cond_f

    if-lez p3, :cond_f

    iput p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iput p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iput p3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    const/4 v0, 0x1

    return v0

    :cond_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Resolution(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
