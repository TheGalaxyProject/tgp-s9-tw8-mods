.class final Lcom/android/settings/search2/IntentPayload$1;
.super Ljava/lang/Object;
.source "IntentPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search2/IntentPayload;
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
        "Lcom/android/settings/search2/IntentPayload;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/search2/IntentPayload;
    .registers 4

    new-instance v0, Lcom/android/settings/search2/IntentPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/search2/IntentPayload;-><init>(Landroid/os/Parcel;Lcom/android/settings/search2/IntentPayload;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/IntentPayload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/search2/IntentPayload;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/search2/IntentPayload;
    .registers 3

    new-array v0, p1, [Lcom/android/settings/search2/IntentPayload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/IntentPayload$1;->newArray(I)[Lcom/android/settings/search2/IntentPayload;

    move-result-object v0

    return-object v0
.end method
