.class Lcom/samsung/android/settings/flipfont/FontListPreference$13;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

.field final synthetic val$deletePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$13;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$13;->val$deletePackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$13;->val$deletePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x34000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$13;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$13;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissApp()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method
