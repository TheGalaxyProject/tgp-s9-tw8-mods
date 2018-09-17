.class Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "NavigationBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_6

    return-void

    :cond_6
    const-string/jumbo v2, "NavBarSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "onChange()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_38
    if-ge v0, v1, :cond_64

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->equals(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get2(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_64
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2, p2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-wrap0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/net/Uri;)V

    return-void
.end method
