.class public Lcom/sec/ims/IMSAPCSInfo;
.super Ljava/lang/Object;
.source "IMSAPCSInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IMSAPCSInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/IMSAPCSInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mServiceStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/ims/IMSAPCSInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSAPCSInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSAPCSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_d
    iput-boolean v0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    return-void

    :cond_10
    move v0, v1

    goto :goto_d
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSAPCSInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSAPCSInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/IMSAPCSInfo;->clone()Lcom/sec/ims/IMSAPCSInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
