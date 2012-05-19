.class Lcom/android/internal/policy/impl/GlassLockScreen$3;
.super Ljava/lang/Object;
.source "GlassLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .registers 8
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 535
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 536
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 537
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 540
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 541
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 542
    .local v1, rawY:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/UnlockClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/UnlockClock;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMatchStatusBarMargin:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMatchLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$302(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 546
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_158

    .line 589
    :cond_31
    :goto_31
    return v5

    .line 549
    :pswitch_32
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->locale_es:Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es_US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 550
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080388

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 554
    :goto_50
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x108038b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 556
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$802(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 557
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$902(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v3

    sub-int v3, v0, v3

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1002(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 559
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1102(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    goto :goto_31

    .line 552
    :cond_95
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080387

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_50

    .line 563
    :pswitch_a2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 564
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMatchLayoutTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockLayoutTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_100

    .line 566
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1300(Lcom/android/internal/policy/impl/GlassLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 568
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1400(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->addUnlockCounter()V

    .line 570
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 571
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1500(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_31

    .line 572
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->setSoundEffect(I)V

    .line 573
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->playSoundEffect(I)V

    goto/16 :goto_31

    .line 578
    :cond_100
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    if-ge v3, v4, :cond_123

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    :goto_11e
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_31

    :cond_123
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v3

    goto :goto_11e

    .line 582
    :pswitch_12a
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 583
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080386

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x108038a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_31

    .line 546
    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_32
        :pswitch_12a
        :pswitch_a2
    .end packed-switch
.end method
