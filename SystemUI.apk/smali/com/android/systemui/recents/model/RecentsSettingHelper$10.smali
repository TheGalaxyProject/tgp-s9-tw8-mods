.class Lcom/android/systemui/recents/model/RecentsSettingHelper$10;
.super Landroid/database/ContentObserver;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

.field final synthetic val$APP_NAME_ICON_URI:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    iput-object p3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;->val$APP_NAME_ICON_URI:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;->val$APP_NAME_ICON_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-wrap1(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set1(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-wrap0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set0(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    :cond_1e
    return-void
.end method
