.class Lcom/android/internal/policy/impl/PukUnlockScreen$1;
.super Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;
.source "PukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .registers 4
    .parameter "success"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 440
    if-eqz p1, :cond_1e

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 457
    :goto_1d
    return-void

    .line 448
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104039e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    #setter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$702(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$902(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_1d
.end method
