.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method
