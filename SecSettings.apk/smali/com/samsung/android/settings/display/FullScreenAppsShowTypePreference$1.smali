.class Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;
.super Ljava/lang/Object;
.source "FullScreenAppsShowTypePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    if-eq v0, p3, :cond_29

    const-string/jumbo v0, "FullScreenAppsShowTypePreference"

    const-string/jumbo v1, "onItemSelected show type : 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iput v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    :goto_16
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->-get0(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->-get0(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    goto :goto_16
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
