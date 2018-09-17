.class Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 12

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SamsungKeyboard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_da

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_5f

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "default_input_method"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "DefaultKeyboard"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "NLG_PRECONDITION"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_5f
    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-wrap2(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get2(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_bd

    const/4 v2, 0x0

    :goto_71
    const/4 v0, 0x0

    :goto_72
    if-ge v0, v2, :cond_c5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get3(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecInputMethodPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecInputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string/jumbo v8, "SamsungKeypad"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c2

    invoke-virtual {v5}, Landroid/support/v7/preference/SecInputMethodPreference;->performClick()V

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_b1

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b1
    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_bd
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_71

    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_c5
    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_d9
    :goto_d9
    return-void

    :cond_da
    const-string/jumbo v7, "ManageKeyboards"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/support/v7/preference/SecPreference;

    move-result-object v7

    if-eqz v7, :cond_118

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/support/v7/preference/SecPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_10c

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "VirtualKeyboard"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10c
    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_d9

    :cond_118
    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_d9
.end method
