.class Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$5;
.super Ljava/lang/Object;
.source "DarkScreenPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->showSOSMessagesDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;Landroid/support/v7/preference/Preference;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$5;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$5;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method