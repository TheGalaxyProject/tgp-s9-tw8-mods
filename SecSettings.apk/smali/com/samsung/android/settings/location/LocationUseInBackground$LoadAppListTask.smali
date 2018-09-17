.class Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "LocationUseInBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationUseInBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/location/LocationUseInBackground;Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-wrap1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-get1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-get1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_15
    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->finish()V

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-wrap2(Lcom/samsung/android/settings/location/LocationUseInBackground;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-get1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
