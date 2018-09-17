.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;
    .registers 4

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;
    .registers 4

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;
    .registers 3

    new-array v0, p1, [Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState$1;->newArray(I)[Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method
