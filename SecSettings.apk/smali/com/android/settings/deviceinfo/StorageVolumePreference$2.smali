.class Lcom/android/settings/deviceinfo/StorageVolumePreference$2;
.super Ljava/lang/Object;
.source "StorageVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    :goto_8
    const/4 v1, 0x1

    return v1

    :cond_a
    const/16 v1, 0xa

    goto :goto_8
.end method
