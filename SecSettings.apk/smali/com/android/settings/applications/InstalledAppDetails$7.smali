.class Lcom/android/settings/applications/InstalledAppDetails$7;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->-get7(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$7;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->-wrap5(Lcom/android/settings/applications/InstalledAppDetails;)V

    :cond_15
    return-void
.end method
