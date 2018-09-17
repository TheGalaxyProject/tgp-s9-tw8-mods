.class final Lcom/android/settings/applications/ProcStatsPackageEntry$1;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsPackageEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .registers 3

    new-instance v0, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/applications/ProcStatsPackageEntry;
    .registers 3

    new-array v0, p1, [Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;->newArray(I)[Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method
