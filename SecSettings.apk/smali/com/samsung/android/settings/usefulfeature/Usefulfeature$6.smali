.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get1(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get1(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "spam_filter_enable"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x7f121b7e

    :goto_21
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_24
    return-void

    :cond_25
    const v0, 0x7f121b7d

    goto :goto_21
.end method
