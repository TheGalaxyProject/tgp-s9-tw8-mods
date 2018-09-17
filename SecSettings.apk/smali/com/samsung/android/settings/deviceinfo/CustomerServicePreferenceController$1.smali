.class Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;
.super Ljava/lang/Object;
.source "CustomerServicePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 6

    const-string/jumbo v3, "tel:1588-3366"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_f
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;->-get0(Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_18} :catch_1a

    :goto_18
    const/4 v3, 0x1

    return v3

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_18
.end method
