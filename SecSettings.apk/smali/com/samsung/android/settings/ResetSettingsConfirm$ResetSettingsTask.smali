.class Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;
.super Landroid/os/AsyncTask;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .registers 5

    :try_start_0
    new-instance v1, Lcom/samsung/android/settings/ResetSettingsValue;

    invoke-direct {v1}, Lcom/samsung/android/settings/ResetSettingsValue;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ResetSettingsValue;->resetAllSettings(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    :goto_b
    const/4 v2, 0x0

    return-object v2

    :catch_d
    move-exception v0

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-wrap1(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
