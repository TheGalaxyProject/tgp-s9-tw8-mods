.class Lcom/samsung/android/settings/datausage/AlertAtWarningPreference$1;
.super Ljava/lang/Object;
.source "AlertAtWarningPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->setChecked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference$1;->this$0:Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference$1;->this$0:Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mTarget:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary;->updateDataUsage()V

    return-void
.end method
