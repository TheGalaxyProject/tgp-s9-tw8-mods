.class final Lcom/android/server/DropBoxManagerService$FileList;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$FileList;",
        ">;"
    }
.end annotation


# instance fields
.field public blocks:I

.field public final contents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService$FileList;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService$FileList;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-eq v0, v1, :cond_d

    iget v0, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v0, v1

    return v0

    :cond_d
    if-ne p0, p1, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/4 v0, -0x1

    return v0

    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v1

    if-le v0, v1, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$FileList;->compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I

    move-result v0

    return v0
.end method
